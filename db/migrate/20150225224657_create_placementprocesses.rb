class CreatePlacementprocesses < ActiveRecord::Migration
 def up
    drop_table :placementprocesses
  end
 
 def change
    create_table :placementprocesses do |t|
	  t.integer :candidate_id
	  t.integer :company_id
	  t.string :position
      t.boolean :active
      t.date :presenteddate
      t.date :clientinterviewdate
      t.date :offerplaceddate
      t.string :offeredsalary
      t.date :offeredstart
      t.date :offeraccepteddate
      t.string :acceptedsalary
      t.date :acceptedstart
      t.date :starteddate
      t.date :paiddate
      t.text :processnotes

      t.timestamps
    end
  end
end