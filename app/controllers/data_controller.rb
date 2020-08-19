class DataController < ApplicationController
  include ValidatorHelper
  before_action :validate_data

  def save

  end
end
