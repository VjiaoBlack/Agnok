class HomeController < ApplicationController
  def index
    @users = User.all
    @session = session
  end
end
