class AddFileCvToResumeInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :resume_infos, :file_cv, :attachment
  end
end
