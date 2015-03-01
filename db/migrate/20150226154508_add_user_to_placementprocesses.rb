class AddUserToPlacementprocesses < ActiveRecord::Migration
  def change
    add_column :placementprocesses, :user_id, :integer
  end
end
