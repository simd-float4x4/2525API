class User < ApplicationRecord
    self.primary_key = 'userId'
    has_many :user_meta_names, primary_key: :userId, foreign_key: 'userId'
    has_many :user_platforms, primary_key: :userId, foreign_key: 'userId'
end