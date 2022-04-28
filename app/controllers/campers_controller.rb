class CampersController < ApplicationController
    # before_action :find_camper, only: :show
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index
        render json: Camper.all
    end

    def show
        render json: find_camper, include: :activities
    end

    def create
        camper = Camper.create!(params.permit(:name, :age))
        render json: camper, status: :created
    end

    private
    def find_camper
        Camper.find(params[:id])
    end

    
    def render_not_found 
        render json: {error: "Camper not found"}, status: 404
    end
end
