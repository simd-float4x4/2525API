class UserMetaName < ApplicationRecord
    belongs_to :user, primary_key: :userId, foreign_key: :userId
end
