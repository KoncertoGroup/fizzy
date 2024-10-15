module Bubble::Boostable
  extend ActiveSupport::Concern

  def boost!
    transaction do
      increment! :boost_count
      track_event :boosted
    end
  end
end
