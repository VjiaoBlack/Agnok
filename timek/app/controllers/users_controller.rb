class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # render text: params[:user].inspect
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user, notice: "Thank you for signing up!"
        else
            redirect_to ""
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to ""
    end

    def show
        @user = User.find(params[:id])
    end


    private
        def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
        end

end
