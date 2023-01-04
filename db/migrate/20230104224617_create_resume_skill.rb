class CreateResumeSkill < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_skills do |t|
      t.references :resume_info, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.integer :level
      t.boolean :show

      t.timestamps
    end
  end
end
