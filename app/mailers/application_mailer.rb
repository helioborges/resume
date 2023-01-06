class ApplicationMailer < ActionMailer::Base
  default from: ActionMailer::Base.smtp_settings[:user_name]
  default to: ResumeInfo.first.resume_emails.first.email.presence ? ResumeInfo.first.resume_emails.first.email : 'youremail@example.com' #change this e-mail if you do not wish to use your first resume e-mail
  default subject: "Resume - Contact Form Message"
  layout "mailer"

  def send_contact_email(contact)
    @contact = contact
    mail
  end

end
