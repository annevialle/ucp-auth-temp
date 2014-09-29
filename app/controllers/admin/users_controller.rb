class Admin::UsersController < Admin::AdminController
    def create
        render json: {errors: 'unauthorized access'}, status: 402 unless current_user.has_role? :admin
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            render json: @user
        end 
        render json: @user.errors.full_messages
    end
end