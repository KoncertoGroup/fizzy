class CommentsController < ApplicationController
  include BubbleScoped, ProjectScoped

  def create
    @bubble.comments.create!(comment_params)
    redirect_to project_bubble_url(@project, @bubble)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
