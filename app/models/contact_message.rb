class ContactMessage < ApplicationRecord
  validates_presence_of :name, :message, :email
  validates :email, format: { with: Devise.email_regexp }

  def headers
    {
      :subject => "Resume - Contact Form Message",
      :to => "your.email@address.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
