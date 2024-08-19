class CommentsController < ApplicationController
  before_action :set_splat

  def create
    @comment = @splat.comments.create(comment_params)
    @comment.save

    redirect_to splat_path(@splat, anchor: "comment_#{@comment.id}")
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

    def set_splat
      @splat = Splat.find(params[:splat_id])
    end
end
