class User < ApplicationRecord
    has_many :user_meta_names, dependent: :destroy
    has_many :user_platforms, dependent: :destroy
    has_many :platforms, through: :user_platforms
  
    validates :hashTag, presence: true
    validates :name, presence: true
    validates :userId, presence: true, uniqueness: true
end
