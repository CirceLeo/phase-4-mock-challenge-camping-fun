class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # rescue_from ActiveRecord::RecordInvalid, with: :render_bad_data


  # private
  # def render_bad_data
  #   render json: {error: "Can't make the thing like that"}, status: 420
  # end

end
