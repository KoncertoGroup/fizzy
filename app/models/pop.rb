class Pop < ApplicationRecord
  belongs_to :bubble
  belongs_to :user, optional: true
end
