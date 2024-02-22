class ApplicationController < ActionController::Base
  include GlobalHelper
  #  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found
    render "application/404", formats: [:html], status: 404
  end
end
    
