class CreateResumeLanguage < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_languages do |t|
      t.references :language, null: false, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
