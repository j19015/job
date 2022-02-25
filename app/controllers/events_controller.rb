class EventsController < ApplicationController
    before_action :authenticate_user!, only: [:event_post, :new, :create, :destroy]
    def rally
        @event=Event.all
        @destroy_event=Event.where("deadline <= ?", Time.now)
        @destroy_event.each do |event|
            event.destroy!
        end
    end
    
    
    
    def event_post
        @event = Event.new
    end
    
    def new
    end
    
    def create
       @event = Event.new(event_params)
       @event.user_id = current_user.id
       if @event.save
          flash[:notice]="投稿成功"
          redirect_to event_rally_path
       else
          render :event_post
       end
    end
    
    def destroy
       @event=Event.find(params[:id])
       @event.destroy
       redirect_to event_rally_path
    end
    
    private
    
    def event_params
        #送られてきた値を得る
        params.require(:event).permit(:title,:contents,:address,:deadline,:event,:address_type,:join)
    end
end
