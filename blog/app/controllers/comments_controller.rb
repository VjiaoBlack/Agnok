class CommentsController < ApplicationController
    # def show
    #     @comment = Comment.find(params[:id])
    #     @topics = @comment.topics
    # end

    def new
    end

    def create

        @discussion = Discussion.find(params[:discussion_id])
        @comment = @discussion.comments.create(comment_params)
        @comment.user_id = 1;
        @comment.body = params[:comment][:body]
        # do something with sessions here

        @comment.save
        redirect_to discussion_path(@discussion)
    end

    private
        def comment_params
            params.require(:comment).permit(:name,:description)
        end
end
