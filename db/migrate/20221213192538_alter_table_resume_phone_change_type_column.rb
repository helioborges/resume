class AlterTableResumePhoneChangeTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :resume_phones, :type, :phone_type
  end
end
