class CategoriesController < ApplicationController
    def show
        @category = Category.find(params[:id])
        @topics = @category.topics
    end

    def new
    end

    def create
        @forum = Forum.find(params[:forum_id])
        @category = @forum.categories.create(category_params)

        @category.save
        redirect_to forum_path(@forum)
    end

    def destroy
        @category = Category.find(params[:id])
        @topics = @category.topics
        @topics.each do |topic|
            topic.destroy
        end
        @category.destroy
        redirect_to forum_path(params[:forum_id])
    end

    private
        def category_params
            params.require(:category).permit(:name,:description)
        end
end
