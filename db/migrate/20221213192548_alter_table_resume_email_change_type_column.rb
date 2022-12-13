class AlterTableResumeEmailChangeTypeColumn < ActiveRecord::Migration[7.0]
  def change
        rename_column :resume_emails, :type, :email_type
  end
end
