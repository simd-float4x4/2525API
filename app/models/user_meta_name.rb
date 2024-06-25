class UserMetaName < ApplicationRecord
    belongs_to :user

    validates :meta_name, presence: true
end
