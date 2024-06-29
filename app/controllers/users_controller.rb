class UsersController < ApplicationController
    def list
      users = User.includes(:user_meta_names, :user_platforms)

      shuffled_users =  users.shuffle
  
      users_with_meta = shuffled_users.map do |user|
        {
          userId: user.userId,
          hashtag: user.hashtag,
          name: user.name,
          metaNames: user.user_meta_names.map(&:userMetaName),
          userPlatforms: user.user_platforms.map do |up|
            {
              itemId: up.itemId,
              platformId: up.platformId,
              platformName: up.platformName,
              accountUserId: up.accountUserId,
              accountUserName: up.accountUserName,
              accountIconImageUrl: up.accountIconImageUrl,
              accountUserUrl: up.accountUserUrl,
              accountUserSubText: up.accountUserSubText,
              hasAccount: up.hasAccount,
              isBroadCasting: up.isBroadCasting
            }
          end
        }
      end
  
      pretty_json = JSON.pretty_generate(users_with_meta)
      render plain: pretty_json
    end

    def index
      @users = User.all
    end
end