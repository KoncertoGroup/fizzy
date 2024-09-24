class Buckets::AccessesController < ApplicationController
  include BucketScoped

  def edit
    @users = @bucket.users
  end

  def update
    @bucket.update_access [ Current.user, *find_users ]
    redirect_to edit_bucket_access_url(@bucket)
  end

  private
    def find_users
      Current.account.users.active.where(id: params[:user_ids])
    end
end
