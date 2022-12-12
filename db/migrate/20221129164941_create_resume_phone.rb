class CreateResumePhone < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_phones do |t|
      t.string :phone_number
      t.boolean :show
      t.boolean :whatsapp
      t.string :type

      t.timestamps
    end
  end
end
