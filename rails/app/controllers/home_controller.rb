class HomeController < ApplicationController
  def index
    @user = User.find(1)
  end

  def new
  end

  def list
    @users = User.all
  end
end
