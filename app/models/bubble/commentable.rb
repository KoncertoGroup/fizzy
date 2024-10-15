module Bubble::Commentable
  extend ActiveSupport::Concern

  included do
    has_many :comments, dependent: :destroy
  end

  def comment!(body)
    comments.create! body:
  end
end
