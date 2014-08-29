class AdminPanelsController < ApplicationController
    def index
        if User.find(session[:user_id])[:email] != "VjiaoBlack@gmail.com"
            render text: "whoops, you dont have permission to access this"
        end
        @admin = User.find(session[:user_id])
        @users = User.all
    end
end
