class AddResumeInfoIdToResumeLanguage < ActiveRecord::Migration[7.0]

  def change
    add_reference :resume_languages, :resume_info, null: false, foreign_key: true
  end

end
