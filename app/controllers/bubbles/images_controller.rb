class Bubbles::ImagesController < ApplicationController
  include BubbleScoped, ProjectScoped

  def destroy
    @bubble.image.purge_later
    redirect_to project_bubble_url(@bubble.project, @bubble)
  end
end
