class ContactMessage < ApplicationRecord
  validates_presence_of :name, :message, :email
  validates :email, format: { with: Devise.email_regexp }





end
