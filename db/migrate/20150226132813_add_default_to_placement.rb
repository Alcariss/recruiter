class AddDefaultToPlacement < ActiveRecord::Migration
  def change
  end
  def up
  change_column :placementprocesses, :active, :boolean, :default => true
end
end
