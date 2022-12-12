class AddResumeInfoIdToResumeEmail < ActiveRecord::Migration[7.0]

  def change
    add_reference :resume_emails, :resume_info, null: false, foreign_key: true
  end

end
