class User < ApplicationRecord
    has_many :user_meta_names, primary_key: :userId, foreign_key: :userId
end
