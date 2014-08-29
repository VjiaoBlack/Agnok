class UsersController < ApplicationController
    def index
    end

    def create
        # render text: params[:user].inspect
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            redirect_to "/users/new"
        end
    end

    def new
        @user = User.new
    end

    def show
        if session[:user_id]
            @user = User.find(session[:user_id])
        else
            @user = User.find(params[:format])
        end

    end

    def edit
        # an artist can edit his profile
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to "/admin_panels"
    end


    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
