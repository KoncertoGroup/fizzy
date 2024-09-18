class BoostsController < ApplicationController
  include BubbleScoped, ProjectScoped

  def create
    @bubble.boosts.create!
  end
end
