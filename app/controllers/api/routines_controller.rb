class Api::RoutinesController < ApplicationController
  before_action :authenticate_devise_api_token!

  def index
    routines = current_devise_api_user.routines
    render json: routines
  end
end
