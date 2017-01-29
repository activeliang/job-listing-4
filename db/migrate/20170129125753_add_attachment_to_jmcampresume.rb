class AddAttachmentToJmcampresume < ActiveRecord::Migration[5.0]
  def change
    add_column :jmcampresumes, :attachment, :string
  end
end
