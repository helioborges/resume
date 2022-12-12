class CreateSocialNetworks < ActiveRecord::Migration[7.0]
  def change
    create_table :social_networks do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
