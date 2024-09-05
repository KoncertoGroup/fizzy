class BoostsController < ApplicationController
  before_action :set_bubble

  def index
  end

  def new
  end

  def create
    @bubble.boosts.create!
  end

  private
    def set_bubble
      @bubble = Bubble.find(params[:bubble_id])
    end
end
