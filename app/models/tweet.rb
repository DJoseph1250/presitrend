class Tweet < ActiveRecord::Base
  
  TweetStream.configure do |config|
    config.consumer_key        = ENV['TWITTER_KEY']
    config.consumer_secret     = ENV['TWITTER_SECRET'] 
    config.oauth_token         = ENV['OAUTH_KEY']
    config.oauth_token_secret  = ENV['OAUTH_SECRET']
    config.auth_method         = :oauth
  end

 def stream
  candidates =  Candidate.all
  states =  Popcounter.column_names
  while true
    candidates.each_with_index do |can_obj,index|
      begin
  #s Thread.new{
        Timeout::timeout(20) {
        @start_time = Time.now
        TweetStream::Client.new.track(can_obj.name) do |t,client|
            sname = Sanitize.clean(t.attrs[:user][:screen_name])
            stext = Sanitize.clean(t.attrs[:text])  
            slocation = Sanitize.clean(t.attrs[:user][:location])
            sabrev =  states.find { |state|  slocation.upcase  =~ /#{state}/}
            if sabrev
              tweet = Tweet.create(username: "#{sname}",tweet: "#{stext}",location: "#{sabrev}",candidate: "#{can_obj.name}")
              tweet.save
              Popcounter.where(:candidate_id => can_obj.id).update_all("#{sabrev} = #{sabrev} + 1")
            end
            puts "NAME => #{sname} TEXT => #{stext} LOCATION= #{slocation}"
            puts "CURRENT TIME IS #{Time.now.strftime("%Y-%m-%d %I:%M:%S %p")}"
      end 
        } 

    # }
    rescue Timeout::Error
      puts "RESCUED #{can_obj.name.upcase}"
    end
    end
  end
 end


end





