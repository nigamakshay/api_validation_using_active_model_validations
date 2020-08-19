module ValidatorHelper
  extend ActiveSupport::Concern

  ActionController::Parameters.action_on_unpermitted_parameters = :raise

  def validate_data
    data = RequestData.new(params)
    if !data.valid?
      render json: { error: data.errors }
    end
  end

  included do
    rescue_from(ActionController::UnpermittedParameters) do |error|
      render json: { error: { unknown_parameters: error.params } }, 
             status: :bad_request
    end
  end  

end