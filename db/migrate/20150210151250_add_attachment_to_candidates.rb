class AddAttachmentToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :attachment, :string
  end
end
