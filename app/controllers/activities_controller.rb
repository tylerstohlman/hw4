class ActivitiesController < ApplicationController
    def create
        @activity = Activity.new(params["activity"])
        @activity.user_id = session[:user_id]
        @activity.save
        redirect_to "/places/#{@activity.contact_id}"
      end
end
