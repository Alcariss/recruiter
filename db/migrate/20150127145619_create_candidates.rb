class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :role
      t.string :city
      t.string :technology
      t.integer :company_id

      t.timestamps
    end
  end
end
