# spec/factories.rb

FactoryBot.define do

  factory(:user) do
    name { Faker::Internet.name }
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory(:resume_info) do
    name { Faker::Internet.name }
    description { 'Description' }
    birthday { Faker::Date.birthday }
    about { 'About me' }
    looking { 'Looking for something' }
  end

  factory(:language) do
    name { 'Portuguese' }
    icon { '🇧🇷' }
  end

  factory(:resume_language) do
    language
    resume_info
    level { Faker::Number.number }
  end

end