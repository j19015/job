class MypagesController < ApplicationController
    def index
        @events=Event.where(user_id: current_user.id)
        p @events
    end
end
