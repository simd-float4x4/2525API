class UserPlatform < ApplicationRecord
    validates :accountUserUrl, format: /\A#{URI::regexp(%w(http https))}\z/
    validates :accountIconImageUrl, format: /\A#{URI::regexp(%w(http https))}\z/

    belongs_to :user, primary_key: :userId, foreign_key: 'userId', optional: true
    has_many :platforms, primary_key: :platformId, foreign_key: 'platformId'
    has_many :platforms, primary_key: :platformName, foreign_key: 'platformName'
end

# 親
# has_many :子のテーブル名, primary_key: :親の主キー, foreign_key: :親の主キー

# 子
# belongs_to :親のテーブル名, primary_key: :親の主キー, foreign_key: :親の主キー