class SignupsController < ApplicationController
    def create
        signup = Signup.create!(params.permit(:time, :camper_id, :activity_id))
        render json: signup.activity,  status: :created
    end
end
