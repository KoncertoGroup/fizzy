class BoostsController < ApplicationController
  before_action :set_splat

  def new
    @boost = @splat.boosts.build
  end

  def create
    @boost = @splat.boosts.new
    @boost.save

    respond_to do |format|
      format.turbo_stream { render }
      format.html { head :no_content }
    end
  end

  def index
    @boosts = @splat.boosts
  end

  private
    def set_splat
      @splat = Splat.find(params[:splat_id])
    end
end
