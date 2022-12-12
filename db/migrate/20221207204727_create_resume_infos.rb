class CreateResumeInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_infos do |t|
      t.string :name
      t.text :description
      t.text :about
      t.text :looking
      t.date :birthday
      t.string :picture

      t.timestamps
    end
  end
end
