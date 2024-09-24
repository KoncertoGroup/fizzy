class AssignmentsController < ApplicationController
  include BubbleScoped, BucketScoped

  before_action :set_assignment, only: :update

  def create
    @assignment = @bubble.assignments.create!(assignment_params)
    redirect_to bucket_bubble_url(@bucket, @bubble)
  end

  def update
    @assignment.update!(assignment_params)
    redirect_to bucket_bubble_url(@bucket, @bubble)
  end

  private
    def assignment_params
      params.require(:assignment).permit(:user_id)
    end

    def set_assignment
      @assignment = @bubble.assignments.find(params[:id])
    end
end
