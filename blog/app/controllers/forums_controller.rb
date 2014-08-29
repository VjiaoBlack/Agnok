class ForumsController < ApplicationController
    def index
        @forums = Forum.all
    end

    def show
        @forum = Forum.find(params[:id])
        @categories = @forum.categories
    end

    def new

    end

    def create
        @forum = Forum.new(params[:forum])

        @forum.save
        redirect_to forums_path
    end

    def destroy
        @forum = Forum.find(params[:id])
        @categories = @forum.categories
        @categories.each do |category|
            category.destroy
        end
        @forum.destroy
        redirect_to forums_path
    end

    private
        def forum_params
            params.require(:forum).permit(:name,:description)
        end
end
