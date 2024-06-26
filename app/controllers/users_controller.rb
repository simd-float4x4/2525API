class UsersController < ApplicationController
    def index
        users_with_meta = User.joins(:user_meta_names).select('users.*, user_meta_names.userMetaName')
        
        users_hash = {}
        
        users_with_meta.each do |user_with_meta|
          user_id = user_with_meta.userId
          user_name = user_with_meta.name
          user_meta_name = user_with_meta.userMetaName
          
          users_hash[user_id] ||= {
            id: user_id,
            hashtag: user_with_meta.hashtag,
            name: user_name,
            userPlatFormId: user_with_meta.userPlatFormId,
            meta_names: []
          }
          
          users_hash[user_id][:meta_names] << user_meta_name
        end
    
        render json: { data: users_hash.values }
    end

    def json
        users = User.all
        render json: { data: users }
    end
end
