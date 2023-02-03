# Seeding Database
# Edit this if you want something else
ResumeInfo.create!([
                     { id: 1, name: "Helio Antônio Borges Junior", description: "I have worked with Ruby on Rails full stack since 2008 (14 years), leading many teams (2 to 5 members) and projects (administrative systems) from concept to shipping (and maintenance) in the public sector in Brazil.", about: "I'm skilled in working under pressure, making decisions, and finding solutions to challenges. I'm very responsible and used to dealing directly with owners, stakeholders, and users, designing new systems and new functions from scratch. \r\nLikewise, I adapt to any working environment and contribute to its existing culture.", looking: "I'm looking for a remote part-time or full-time job", created_at: "2023-01-06 15:37:45", updated_at: "2023-02-03 18:01:18", location: "Goiânia / GO - Brazil", time_zone: "UTC -3", birthday: "1987-07-11", schedule: "Flexible", file_cv: nil, picture: nil }
                   ])

#CREATING USER ADMIN
#login credentials:
#email = 'youremail@email.com'
#password = 'resumeadmin123'
User.create!([
               { id: 1, name: "Admin User", email: "youremail@email.com", password: 'resumeadmin123', encrypted_password: "$2a$12$H8mhFgIRXcmcMDd0vqdP/Oc7fqnOUqxXoL8wu10nzUX3xr3tumHvi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: "2023-01-19 03:09:12", sign_in_count: 2, current_sign_in_at: "2023-01-25 05:06:19", last_sign_in_at: "2023-01-19 03:09:13", current_sign_in_ip: "172.71.10.107", last_sign_in_ip: "127.0.0.1", admin: true, created_at: "2023-01-19 03:08:17", updated_at: "2023-01-25 05:06:19" }
             ])

Language.create!([
                   { id: 5, name: "Brazilian Portuguese", icon: "🇧🇷", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                   { id: 6, name: "Portuguese", icon: "🇵🇹", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                   { id: 7, name: "Spanish", icon: "🇪🇸", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                   { id: 8, name: "English", icon: "🇬🇧", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" }
                 ])
#if you want all languages, just uncomment this code, there are no flag icons for them:
# Language.delete_all
# open("#{Rails.root}/lib/assets/languages.txt") do |languages|
#   languages.read.each_line do |language|
#     name, icon = language.chomp.gsub(")", "").split("(")
#     Language.create!(:name => name, :icon => icon)
#   end
# end

SocialNetwork.create!([
                        { id: 15, name: "Facebook", icon: "facebook", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 16, name: "Twitter", icon: "twitter", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 17, name: "Instagram", icon: "instagram", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 18, name: "Youtube", icon: "youtube", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 19, name: "Linkedin", icon: "linkedin", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 20, name: "Github", icon: "github", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 21, name: "Stack Overflow", icon: "stack-overflow", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 22, name: "Reddit", icon: "reddit", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 23, name: "TikTok", icon: "tiktok", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 24, name: "Twitch", icon: "twitch", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 25, name: "SnapChat", icon: "snapchat", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 26, name: "Pinterest", icon: "pinterest", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 27, name: "Spotify", icon: "spotify", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" },
                        { id: 28, name: "Vimeo", icon: "vimeo-v", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45" }
                      ])
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

ResumeSocialNetwork.create!([
                              { id: 1, url: "https://www.test.com", show: false, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 02:04:36", social_network_id: 15, resume_info_id: 1 },
                              { id: 2, url: "https://www.test.com", show: false, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 02:04:36", social_network_id: 16, resume_info_id: 1 },
                              { id: 3, url: "https://www.instagram.com/helioborgesjr/", show: true, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 02:04:36", social_network_id: 17, resume_info_id: 1 },
                              { id: 4, url: "https://www.test.com", show: false, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 02:04:36", social_network_id: 18, resume_info_id: 1 },
                              { id: 6, url: "https://github.com/helioborges", show: true, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 02:04:36", social_network_id: 20, resume_info_id: 1 },
                              { id: 7, url: "https://stackoverflow.com/users/3877210/helio-borges", show: true, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 02:04:36", social_network_id: 21, resume_info_id: 1 },
                              { id: 5, url: "https://www.linkedin.com/in/helio-antonio-borges-junior-93038528/", show: true, created_at: "2023-01-06 15:37:45", updated_at: "2023-01-11 04:16:42", social_network_id: 19, resume_info_id: 1 }
                            ])

ResumeSkill.create!([
                      { id: 1, resume_info_id: 1, name: "Ruby on Rails", description: "Ruby on Rails", level: 100, show: true, created_at: "2023-01-11 02:23:42", updated_at: "2023-01-11 02:23:42" },
                      { id: 2, resume_info_id: 1, name: "PostgreSQL", description: "PostgreSQL", level: 90, show: true, created_at: "2023-01-11 02:23:42", updated_at: "2023-01-11 02:23:42" },
                      { id: 3, resume_info_id: 1, name: "HTML", description: "HTML", level: 100, show: true, created_at: "2023-01-11 02:23:42", updated_at: "2023-01-11 02:23:42" },
                      { id: 4, resume_info_id: 1, name: "CSS", description: "CSS", level: 90, show: true, created_at: "2023-01-11 02:23:42", updated_at: "2023-01-11 02:23:42" },
                      { id: 5, resume_info_id: 1, name: "JavaScript", description: "JavaScript", level: 90, show: true, created_at: "2023-01-11 02:23:43", updated_at: "2023-01-11 02:23:43" },
                      { id: 6, resume_info_id: 1, name: "Software Engineering", description: "Software Engineering", level: 100, show: true, created_at: "2023-01-11 04:04:40", updated_at: "2023-01-11 04:04:40" },
                      { id: 7, resume_info_id: 1, name: "Customer Support", description: "Customer Support", level: 100, show: true, created_at: "2023-01-11 04:04:40", updated_at: "2023-01-11 04:04:40" },
                      { id: 8, resume_info_id: 1, name: "Digital Marketing", description: "Digital Marketing", level: 90, show: true, created_at: "2023-01-11 04:04:40", updated_at: "2023-01-11 04:04:40" },
                      { id: 9, resume_info_id: 1, name: " Sales and Commercial Representative", description: " Sales and Commercial Representative", level: 85, show: true, created_at: "2023-01-11 04:04:40", updated_at: "2023-01-11 04:04:40" },
                      { id: 10, resume_info_id: 1, name: "Flex", description: "Flex", level: 85, show: true, created_at: "2023-01-11 04:05:21", updated_at: "2023-01-11 04:05:21" }
                    ])

ResumePhone.create!([
                      { id: 1, phone_number: "5562992484169", show: true, whatsapp: true, phone_type: "Personal", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:43:09", resume_info_id: 1 }
                    ])

ResumeLanguage.create!([
                         { id: 1, language_id: 5, level: "5", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45", resume_info_id: 1 },
                         { id: 2, language_id: 7, level: "2", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45", resume_info_id: 1 },
                         { id: 3, language_id: 8, level: "5", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:37:45", resume_info_id: 1 }
                       ])

ResumeExperience.create!([
                           { id: 1, resume_info_id: 1, year_start: 2019, year_end: nil, title: "Owner", company: "Cassol Borges Treinamentos", description: "• Full Stack Development in Rails, PostgreSQL, HTML, Bootstrap, CSS, JavaScript for our website, automated routines and reports.\r\n• Customer Support. Digital Marketing, Sales and Commercial Representative.\r\n• Product and Brand Development", url: "www.professorajulia.com.br", show: true, created_at: "2023-01-11 02:19:56", updated_at: "2023-01-11 02:23:41" },
                           { id: 3, resume_info_id: 1, year_start: 2009, year_end: 2010, title: "Full Stack Rails Developer", company: "INBRATECH", description: "• Full Stack Development in Rails, PostgreSQL, HTML, CSS, JavaScript.\r\n• Collaborated on stages of systems development lifecycle from requirement gathering to production releases.", url: "", show: true, created_at: "2023-01-11 02:19:57", updated_at: "2023-01-11 02:23:41" },
                           { id: 4, resume_info_id: 1, year_start: 2008, year_end: 2009, title: "Rails Developer Intern", company: "TRE-GO: Regional Electoral Court of Goiás", description: "• Full Stack Development in Rails, Oracle, HTML, CSS, JavaScript.\r\n• Quickly learned new skills and applied them to current and new projects.\r\n• Maintained systems and helped customers with their problems.", url: "https://www.tre-go.jus.br/", show: true, created_at: "2023-01-11 02:19:57", updated_at: "2023-01-11 02:23:42" },
                           { id: 2, resume_info_id: 1, year_start: 2010, year_end: 2018, title: "Senior Team Leader and Full Stack Eng", company: "SIEDOS", description: "• Led teams of 2-5 members developing many administrative systems for public institutions in Brazil, specially the Justice Department in Goiás (MPGO).\r\n• Full Stack development in Rails, PostgreSQL, Oracle, HTML, Bootstrap, JavaScript and Flex.\r\n• Experienced in Software Engineering. Gathered and defined customer requirements to develop clear specifications for projects.\r\n• Interacted directly with users and also the institution's Executives and Directors to identify, adapt and deliver customer needs.\r\n• Worked within tight deadlines and fast-paced atmosphere.\r\n• Responsible for recruiting, hiring and training team members.", url: "www.siedos.com.br", show: true, created_at: "2023-01-11 02:19:56", updated_at: "2023-01-11 04:11:36" }
                         ])

ResumeEducation.create!([
                          { id: 1, resume_info_id: 1, year_start: 2016, year_end: 2018, title: "MBA in I.T. Governance", institution: "IPOG", description: "MBA in I.T. Governance @ IPOG", url: "ipog.edu.br", show: true, created_at: "2023-01-06 15:45:50", updated_at: "2023-01-06 15:45:50" },
                          { id: 2, resume_info_id: 1, year_start: 2005, year_end: 2009, title: "Bachelor of Science: Computer Science", institution: "Pontifical Catholic University of Goiás, PUC-GO", description: "Bachelor of Science: Computer Science @ PUC-GO", url: "www.pucgoias.edu.br", show: true, created_at: "2023-01-06 15:45:50", updated_at: "2023-01-06 15:45:50" }
                        ])

ResumeEmail.create!([
                      { id: 1, email: "helio.borgesjr@gmail.com", show: true, email_type: "Personal", created_at: "2023-01-06 15:37:45", updated_at: "2023-01-06 15:43:09", resume_info_id: 1 }
                    ])
