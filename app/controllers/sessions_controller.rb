class SessionsController < ApplicationController
    def create
        @user = User.find_for_database_authentication(email: params['params']['email'])
        if @user && @user.valid_password?(params['params']['password'])
            sign_in @user
            render json: @user
        else
            render json: {
                errors: "sss"
            }
        end
    end

    def signed_in
        render json: { user_signed_in:  user_signed_in? }
    end
end
