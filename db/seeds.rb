#Creating your Resume File. Edit this
resume = ResumeInfo.new
resume.name = 'Your Full Name'
resume.description = 'Your Description'
resume.about = 'About yourself'
resume.looking = 'What are you looking for'
resume.birthday = Date.new(1987,7,11)
resume.picture = 'users/avatar.jpg'
resume.save

#POPULATING THE LANGUAGES
Language.delete_all
language = Language.create([{name: 'Brazilian Portuguese', icon: '🇧🇷' }])
language = Language.create([{name: 'Portuguese', icon: '🇵🇹' }])
language = Language.create([{name: 'English', icon: '🇪🇸' }])
language = Language.create([{name: 'Spanish', icon: '🇬🇧' }])

#if you want all languages, just uncomment this code, there are no flag icons for them:
# Language.delete_all
# open("#{Rails.root}/lib/assets/languages.txt") do |languages|
#   languages.read.each_line do |language|
#     name, icon = language.chomp.gsub(")", "").split("(")
#     Language.create!(:name => name, :icon => icon)
#   end
# end





