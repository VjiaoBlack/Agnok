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
        @forum = Forum.new(forum_params)

        @forum.save
        redirect_to forums_path
    end

    private
        def forum_params
            params.require(:forum).permit(:name,:description)
        end
end