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
    description { Faker::Lorem.sentence   }
    birthday { Faker::Date.birthday }
    about { Faker::Lorem.sentence   }
    looking { Faker::Lorem.sentence   }
  end

  factory(:contact_message) do
    name { Faker::Internet.name }
    email { Faker::Internet.email }
    message { Faker::Lorem.sentence   }
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

end