class RequestData

    include ActiveModel::Validations

    attr_accessor :param1, :param2

    validates :param1, presence: true, numericality: true
    validates :param2, presence: true, numericality: true
  
    def initialize(params={})
      @param1 = params[:param1]
      @param2 = params[:param2]
      params.permit(:param1,:param2)
    end
end