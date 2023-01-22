# spec/factories.rb

FactoryBot.define do

  factory(:user) do
    name { Faker::Internet.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    admin { Faker::Boolean.boolean }
  end

  factory(:resume_info) do
    name { Faker::Internet.name }
    description { Faker::Lorem.sentence }
    birthday { Faker::Date.birthday }
    about { Faker::Lorem.sentence }
    looking { Faker::Lorem.sentence }
  end

  factory(:contact_message) do
    name { Faker::Internet.name }
    email { Faker::Internet.email }
    message { Faker::Lorem.sentence }
  end

  factory(:language) do
    name { Faker::Nation.language }
    icon { Faker::SlackEmoji.emoji }
  end

  factory(:resume_language) do
    language
    resume_info
    level { Faker::Number.number }
  end

  factory(:resume_education) do
    resume_info
    year_start { Faker::Vehicle.year }
    year_end { Faker::Vehicle.year }
    title { Faker::Educator.degree }
    institution { Faker::Educator.university }
    description { Faker::Educator.course }
    url { Faker::Internet.url }
    show { Faker::Boolean.boolean }
  end

  factory(:resume_email) do
    email { Faker::Internet.email }
    show { Faker::Boolean.boolean }
    email_type { ['Work', 'Personal'] }
    resume_info
  end

  factory(:resume_experience) do
    resume_info
    year_start { Faker::Vehicle.year }
    year_end { Faker::Vehicle.year }
    title { Faker::Job.title }
    company { Faker::Company.name }
    description { Faker::Job.position }
    url { Faker::Internet.url }
    show { Faker::Boolean.boolean }
  end

  factory(:resume_phone) do
    phone_number { Faker::PhoneNumber.phone_number_with_country_code }
    show { Faker::Boolean.boolean }
    whatsapp { Faker::Boolean.boolean }
    phone_type { ['Work', 'Personal'] }
    resume_info
  end

  factory(:resume_social_network) do
    url { Faker::Internet.url }
    show { Faker::Boolean.boolean }
    resume_info
    social_network
  end

  factory(:social_network) do
    name { Faker::Company.name }
    icon { Faker::SlackEmoji.emoji }
  end

  factory(:resume_skill) do
    name { Faker::Job.key_skill }
    description { Faker::Job.position }
    level { Faker::Number.within(range: 0..100) }
    show { Faker::Boolean.boolean }
    resume_info
  end

end