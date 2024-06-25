class Platform < ApplicationRecord
    has_many :user_platforms
    has_many :users, through: :user_platforms
  
    validates :number, presence: true, uniqueness: true
    validates :name, presence: true
    validates :icon, presence: true
    validates :brandColor, presence: true
end
