class BoostsController < ApplicationController
  include BubbleScoped, BucketScoped

  def create
    @bubble.boosts.create!
  end
end
