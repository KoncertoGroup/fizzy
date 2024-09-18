class BoostsController < ApplicationController
  include BubbleScoped, ProjectScoped

  def index
  end

  def new
  end

  def create
    @bubble.boosts.create!
  end
end
