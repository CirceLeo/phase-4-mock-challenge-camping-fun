class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_bad_data


  private
  def render_not_found 
    render json: {error: "#{self.class} not found"}, status: 404
  end

  def render_bad_data invalid
    render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
  end

end
