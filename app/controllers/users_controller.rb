class UsersController < ApplicationController
    def index
        users_with_meta = User
                          .left_joins(:user_meta_names, :user_platforms)
                          .select('users.*, user_meta_names.userMetaName, user_platforms.*')
    
        users_hash = {}
    
        users_with_meta.each do |user_with_meta|
          user_id = user_with_meta.userId
          user_name = user_with_meta.name
          user_meta_name = user_with_meta.userMetaName
          user_platform = {
            itemId: user_with_meta.itemId,
            accountUserId: user_with_meta.accountUserId,
            accountUserName: user_with_meta.accountUserName,
            accountIconImageUrl: user_with_meta.accountIconImageUrl,
            accountUserUrl: user_with_meta.accountUserUrl,
            hasAccount: user_with_meta.hasAccount,
            isBroadCasting: user_with_meta.isBroadCasting
          }
    
          users_hash[user_id] ||= {
            id: user_id,
            hashtag: user_with_meta.hashtag,
            name: user_name,
            userPlatFormId: user_with_meta.userPlatFormId,
            meta_names: [],
            user_platforms: []
          }
    
          users_hash[user_id][:meta_names] << user_meta_name if user_meta_name
          if user_platform[:itemId] && !users_hash[user_id][:user_platforms].any? { |up| up[:itemId] == user_platform[:itemId] }
            users_hash[user_id][:user_platforms] << user_platform
          end
        end
    
        pretty_json = JSON.pretty_generate({ data: users_hash.values })
        render plain: pretty_json
    end

    def json
        users = User.all
        render json: { data: users }
    end
end
