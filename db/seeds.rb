#Creating your Resume File. Edit this
resume = ResumeInfo.new
resume.name = 'Your Full Name'
resume.description = 'Your Description'
resume.about = 'About yourself'
resume.looking = 'What are you looking for'
resume.birthday = Date.new(1987, 7, 11)
resume.picture = 'users/avatar.jpg'
resume.save

#POPULATING LANGUAGES
Language.delete_all
language = Language.create({ name: 'Brazilian Portuguese', icon: '🇧🇷' })
ResumeLanguage.create({ language_id: language.id, level: 5, resume_info_id: resume.id })

language = Language.create({ name: 'Portuguese', icon: '🇵🇹' })

language = Language.create({ name: 'English', icon: '🇪🇸' })
ResumeLanguage.create({ language_id: language.id, level: 5, resume_info_id: resume.id })

language = Language.create({ name: 'Spanish', icon: '🇬🇧' })
ResumeLanguage.create({ language_id: language.id, level: 2, resume_info_id: resume.id })

#if you want all languages, just uncomment this code, there are no flag icons for them:
# Language.delete_all
# open("#{Rails.root}/lib/assets/languages.txt") do |languages|
#   languages.read.each_line do |language|
#     name, icon = language.chomp.gsub(")", "").split("(")
#     Language.create!(:name => name, :icon => icon)
#   end
# end

#POPULATING SOCIAL NETWORKS
SocialNetwork.delete_all
social_network = SocialNetwork.create({ name: 'Facebook', icon: 'facebook' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Twitter', icon: 'twitter' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Instagram', icon: 'instagram' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Youtube', icon: 'youtube' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Linkedin', icon: 'linkedin' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Github', icon: 'github' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Stack Overflow', icon: 'stack-overflow' })
ResumeSocialNetwork.create({ social_network_id: social_network.id, url: 'https://www.test.com', resume_info_id: resume.id, show: true })

social_network = SocialNetwork.create({ name: 'Reddit', icon: 'reddit' })
social_network = SocialNetwork.create({ name: 'TikTok', icon: 'tiktok' })
social_network = SocialNetwork.create({ name: 'Twitch', icon: 'twitch' })
social_network = SocialNetwork.create({ name: 'SnapChat', icon: 'snapchat' })
social_network = SocialNetwork.create({ name: 'Pinterest', icon: 'pinterest' })
social_network = SocialNetwork.create({ name: 'Spotify', icon: 'spotify' })
social_network = SocialNetwork.create({ name: 'Vimeo', icon: 'vimeo-v' })

#uncomment this if you want those social networks
# social_network = SocialNetwork.create({ name: 'Truth Social', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'Rumble', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'Getrr', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'Gab', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'Parler', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'MeWe', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'Koo', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'WeChat', icon: 'circle' })
# social_network = SocialNetwork.create({ name: 'QQ', icon: 'qq' })
# social_network = SocialNetwork.create({ name: 'Weibo', icon: 'weibo' })
# social_network = SocialNetwork.create({ name: 'Vk', icon: 'vk' })

resume_email = ResumeEmail.create(:email => 'youremail@email.com', email_type: 'Personal', show: true, resume_info_id: resume.id)
resume_phone = ResumePhone.create(:phone_number => '+55 62 99999-9999', phone_type: 'Personal', show: true, resume_info_id: resume.id, whatsapp: true)

