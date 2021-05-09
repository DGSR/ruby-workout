class MainController < ApplicationController
  def index
  end

  def help
    @current_user = current_user
  end

  def contacts
    @current_user = current_user
  end

  def about
    @current_user = current_user
  end
end
