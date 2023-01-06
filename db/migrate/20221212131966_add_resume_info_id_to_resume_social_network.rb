class AddResumeInfoIdToResumeSocialNetwork < ActiveRecord::Migration[7.0]

  def change
    # remove_column :resume_social_networks, :social_netork_id
    add_reference :resume_social_networks, :social_network, null: false, foreign_key: true
    add_reference :resume_social_networks, :resume_info, null: false, foreign_key: true
  end

end
