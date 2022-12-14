class AddLocationToResumeInfo < ActiveRecord::Migration[7.0]
  def change
    add_column :resume_infos, :location, :string
    add_column :resume_infos, :time_zone, :string
    add_column :resume_infos, :schedule, :string
  end
end
