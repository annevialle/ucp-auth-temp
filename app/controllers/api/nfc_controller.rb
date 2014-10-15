class NfcController < ApiController
    def index
         render json: current_user.recent_promotion.events
    end
end