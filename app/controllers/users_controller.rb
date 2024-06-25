class UsersController < ApplicationController
    def index
        users = User.all
        render json: { data: users }
    end

    def json
        users = User.all
        render json: { data: users }
    end
end
