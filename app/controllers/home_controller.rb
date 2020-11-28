class HomeController < ApplicationController
  def index
  end

  def contacts
  end

  def create_contact
    render plain: params[:contact].inspect
  end
end
