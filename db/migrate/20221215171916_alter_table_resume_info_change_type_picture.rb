class AlterTableResumeInfoChangeTypePicture < ActiveRecord::Migration[7.0]
  def change
    remove_column :resume_infos, :picture
    add_column :resume_infos, :picture, :binary
  end
end
