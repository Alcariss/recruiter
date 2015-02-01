class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phone
      t.string :role
      t.integer :company_id

      t.timestamps
    end
  end
end
