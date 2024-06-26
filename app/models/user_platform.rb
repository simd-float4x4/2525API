class UserPlatform < ApplicationRecord
    belongs_to :user, primary_key: :userPlatFormId, foreign_key: :userPlatFormId
end
