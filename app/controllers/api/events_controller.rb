module Api
    class EventsController < ApiController
        def index
             render json: current_user.recent_promotion.events
        end
    end
end