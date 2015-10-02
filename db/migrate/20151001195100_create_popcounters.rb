class CreatePopcounters < ActiveRecord::Migration
  def change
    create_table :popcounters, id: false do |t|
      t.integer :candidate_id
      t.integer :AL, default:  0
      t.integer :AK, default:  0
      t.integer :AZ, default:  0
      t.integer :AR, default:  0
      t.integer :CA, default:  0
      t.integer :CO, default:  0
      t.integer :CT, default:  0
      t.integer :DE, default:  0
      t.integer :FL, default:  0
      t.integer :GA, default:  0
      t.integer :HI, default:  0
      t.integer :ID, default:  0
      t.integer :IL, default:  0
      t.integer :IN, default:  0
      t.integer :IA, default:  0
      t.integer :KS, default:  0
      t.integer :KY, default:  0
      t.integer :LA, default:  0
      t.integer :ME, default:  0
      t.integer :MD, default:  0
      t.integer :MA, default:  0
      t.integer :MI, default:  0
      t.integer :MN, default:  0
      t.integer :MS, default:  0
      t.integer :MO, default:  0
      t.integer :MT, default:  0
      t.integer :NE, default:  0
      t.integer :NV, default:  0
      t.integer :NH, default:  0
      t.integer :NJ, default:  0
      t.integer :NM, default:  0
      t.integer :NY, default:  0
      t.integer :NC, default:  0
      t.integer :ND, default:  0
      t.integer :OH, default:  0
      t.integer :OK, default:  0
      t.integer :OR, default:  0
      t.integer :PA, default:  0
      t.integer :RI, default:  0
      t.integer :SC, default:  0
      t.integer :SD, default:  0
      t.integer :TN, default:  0
      t.integer :TX, default:  0
      t.integer :UT, default:  0
      t.integer :VT, default:  0
      t.integer :VA, default:  0
      t.integer :WA, default:  0
      t.integer :WV, default:  0
      t.integer :WI, default:  0
      t.integer :WY, default:  0
      t.timestamps null: false
    end
  end
end
