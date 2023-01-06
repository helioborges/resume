class AlterTableResumeInfoChangeTypePicture < ActiveRecord::Migration[7.0]
  def change
    remove_column :resume_social_networks, :picture
    add_column :resume_social_networks, :picture, :binary
  end
end
