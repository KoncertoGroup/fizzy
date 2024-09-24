class BucketsController < ApplicationController
  before_action :set_bucket, except: %i[ index new create ]

  def index
    @buckets = Current.user.buckets.all
  end

  def new
    @bucket = Current.account.buckets.build
  end

  def create
    @bucket = Current.account.buckets.create!(bucket_params)
    redirect_to bucket_bubbles_url(@bucket)
  end

  def edit
  end

  def update
    @bucket.update!(bucket_params)
    redirect_to bucket_bubbles_url(@bucket)
  end

  def destroy
    @bucket.destroy
    redirect_to buckets_url
  end

  private
    def set_bucket
      @bucket = Current.user.buckets.find(params[:id])
    end

    def bucket_params
      params.require(:bucket).permit(:name)
    end
end
