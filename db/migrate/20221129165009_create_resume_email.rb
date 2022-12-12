class CreateResumeEmail < ActiveRecord::Migration[7.0]
  def change
    create_table :resume_emails do |t|
      t.string :email
      t.boolean :show
      t.string :type

      t.timestamps
    end
  end
end
