class CreateResumeEducation < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_educations do |t|
      t.references :resume_info, null: false, foreign_key: true
      t.integer :year_start
      t.integer :year_end
      t.string :title
      t.string :institution
      t.text :description
      t.string :url
      t.boolean :show

      t.timestamps
    end
  end
end
