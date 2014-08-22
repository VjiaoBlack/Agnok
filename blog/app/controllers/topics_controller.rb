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

private
    def category_params
        params.require(:topic).permit(:name,:description)
    end

end
