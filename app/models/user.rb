class User < ApplicationRecord
    has_many :user_meta_names, primary_key: :userId, foreign_key: :userId
    has_many :user_platforms, primary_key: :userPlatformId, foreign_key: :userPlatformId
end