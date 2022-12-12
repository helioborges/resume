class CreateResumeSocialNetwork < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_social_networks do |t|
      t.references :social_netork, null: false, foreign_key: true
      t.string :url
      t.boolean :show

      t.timestamps
    end
  end
end
