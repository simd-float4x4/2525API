class UserPlatform < ApplicationRecord
    belongs_to :user
    belongs_to :platform
  
    validates :account_url, format: URI::regexp(%w[http https]), allow_blank: true
    validates :account_icon_image_url, format: URI::regexp(%w[http https]), allow_blank: true
end
