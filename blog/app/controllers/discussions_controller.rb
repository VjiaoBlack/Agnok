class DiscussionsController < ApplicationController
    def show
        @discussion = Discussion.find(params[:id])
        @comments = @discussion.comments
    end

    def new
    end

    def create

        @topic = Topic.find(params[:topic_id])
        @discussion = @topic.discussions.create(topic_params)

        @discussion.save
        redirect_to topic_path(@topic)
    end

    def destroy
        @discussion = Discussion.find(params[:id])
        @comments = @discussion.comments
        @comments.each do |comment|
            comment.destroy
        end
        @discussion.destroy
        redirect_to topic_path(params[:topic_id])
    end


    private
        def topic_params
            params.require(:discussion).permit(:name,:description)
        end

end
