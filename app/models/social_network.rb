class SocialNetwork < ApplicationRecord
  validates_presence_of :name, :icon
  validates_uniqueness_of :name
  validates_uniqueness_of :icon
end
