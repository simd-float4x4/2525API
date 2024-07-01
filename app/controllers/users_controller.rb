class UsersController < ApplicationController
    def list
      users = User.includes(:user_meta_names, :user_platforms)

      shuffled_users =  users.shuffle
  
      users_with_meta = shuffled_users.map do |user|
        {
          userId: user.userId,
          hashtag: '#' + user.hashtag,
          name: user.name,
          metaNames: user.user_meta_names.map(&:userMetaName),
          userPlatforms: user.user_platforms.map do |up|
            if up.hasAccount == true 
              {
                itemId: up.itemId,
                platformId: up.platformId,
                platformName: up.platformName,
                accountUserId: up.accountUserId,
                accountUserName: up.accountUserName,
                accountIconImageUrl: up.accountIconImageUrl,
                accountUserUrl: up.accountUserUrl,
                accountUserSubText: '@' + up.accountUserSubText,
                hasAccount: up.hasAccount,
                isBroadCasting: up.isBroadCasting
              }
            else 
              {
                itemId: up.itemId,
                hasAccount: false
              }
            end
          end
        }
      end
  
      pretty_json = JSON.pretty_generate(users_with_meta)
      render plain: pretty_json
    end

    def index
      @users = User.all
      render :layout => "layouts/application"
    end

    def show
      @user = User.find_by(userId: params[:id])
      render :layout => "layouts/application"
    end

    def suspend
      @user = User.find_by(userId: params[:userId])
      @item = @user.user_platforms.find_by(itemId: params[:itemId])
      @item.hasAccount = @item.hasAccount ? false : true
      @item.save
      @user.save
      @users = User.all

      redirect_to user_list_path
    end

    def new
      @user = User.new
      @user.user_meta_names.build
      @user.user_platforms.build
      @platforms = Platform.all
      render :layout => "layouts/application"
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to user_list_path
      else
        @platforms = Platform.all
        render :new, layout: "layouts/application"
      end
    end

    private

    def user_params
      params.require(:user).permit(
        :name, :hashtag,
        user_meta_name_attributes: [:userMetaNames],
        user_platforms_attributes: [
          :id,
          :itemId,
          :accountUserId, 
          :accountUserName, 
          :accountIconImageUrl, 
          :accountUserUrl, 
          :accountUserSubText, 
          :hasAccount, 
          :isBroadCasting, 
          :platformId,
          :platformName
        ]
      )
    end
end