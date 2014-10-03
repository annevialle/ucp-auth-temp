module Admin
    class AdminController < ApiController
        before_action :is_admin

        def is_admin
            unless current_user.has_role? :admin
                render json: {errors: 'unauthorized access'}, status: 402
            end 
        end
    end
end