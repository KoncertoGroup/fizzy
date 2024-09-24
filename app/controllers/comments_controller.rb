class CommentsController < ApplicationController
  include BubbleScoped, BucketScoped

  def create
    @bubble.comments.create!(comment_params)
    redirect_to bucket_bubble_url(@bucket, @bubble)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
