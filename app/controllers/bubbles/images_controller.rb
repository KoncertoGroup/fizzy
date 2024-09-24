class Bubbles::ImagesController < ApplicationController
  include BubbleScoped, BucketScoped

  def destroy
    @bubble.image.purge_later
    redirect_to bucket_bubble_url(@bubble.bucket, @bubble)
  end
end
