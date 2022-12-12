json.extract! resume_info, :id, :name, :description, :about, :looking, :birthday, :picture, :created_at, :updated_at
json.url resume_info_url(resume_info, format: :json)
