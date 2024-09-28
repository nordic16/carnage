class Api::ProfilesController < ApplicationController
  before_action :authenticate_devise_api_token!

  def index
    render json: current_devise_api_user
  end

  def update

  end

  def create
  end

  def destroy
  end

end
