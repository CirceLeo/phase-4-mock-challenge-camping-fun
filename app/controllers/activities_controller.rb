class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        # if 
            
        # end
        render json: Activity.all
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content, status: :accepted
    end

    private
    def render_not_found 
        render json: {error: "Activity not found"}, status: 404
    end
end
