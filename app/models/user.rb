class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :trackable

  validates_presence_of :name, :email, :encrypted_password, :sign_in_count
  validates :admin, inclusion: [true, false]
  validates_uniqueness_of :name
  validates_uniqueness_of :email
  validates_uniqueness_of :reset_password_token
end
