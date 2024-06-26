class UsersController < ApplicationController
    def index
      users_with_meta = User
                        .select('users.*, GROUP_CONCAT(user_meta_names.userMetaName) AS meta_names')
                        .joins('LEFT JOIN user_meta_names ON users.userId = user_meta_names.userId')
                        .joins('LEFT JOIN user_platforms ON users.userPlatformId = user_platforms.userPlatformId')
                        .joins('LEFT JOIN platforms ON user_platforms.platformId = platforms.platformId')
                        .group('users.userId')
  
      users_hash = {}
  
      users_with_meta.each do |user_with_meta|
        user_id = user_with_meta.userId
        user_name = user_with_meta.name
        meta_names = user_with_meta.meta_names.split(',') if user_with_meta.meta_names.present?
  
        users_hash[user_id] ||= {
          id: user_id,
          hashtag: user_with_meta.hashtag,
          name: user_name,
          userPlatformId: user_with_meta.userPlatformId,
          meta_names: meta_names || [],
          platformId: user_with_meta.userPlatformId
        }
      end
  
      pretty_json = JSON.pretty_generate({ data: users_hash.values })
      render plain: pretty_json
    end
  end
  