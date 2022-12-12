class AddResumeInfoIdToResumePhone < ActiveRecord::Migration[7.0]

  def change
    add_reference :resume_phones, :resume_info, null: false, foreign_key: true
  end

end
