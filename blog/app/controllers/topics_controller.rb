class TopicsController < ApplicationController
    def show
        @topic = Topic.find(params[:id])
        @discussions = @topic.discussions
    end

    def new
    end

    def create
        @category = Category.find(params[:category_id])
        @topic = @category.topics.create(category_params)

        @topic.save
        redirect_to forum_path(@category)
    end

    def destroy
        @topic = Topic.find(params[:id])
        @discussions = @topic.discussions
        @discussions.each do |discussion|
            discussion.destroy
        end
        @topic.destroy
        redirect_to category_path(params[:category_id])
    end

    private
        def category_params
            params.require(:topic).permit(:name,:description)
        end

end
