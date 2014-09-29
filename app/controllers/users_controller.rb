class UsersController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def update
        @user = User.find(params[:id])
    end

    def profile
        render json: current_user
    end

    def users_formation
        render json: current_user.recent_promotion
    end

    private
        def params_user

        end

end
