class AddLinkedinToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :linkedin, :string
  end
end
