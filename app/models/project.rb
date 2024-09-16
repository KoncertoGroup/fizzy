class Project < ApplicationRecord
  belongs_to :creator, class_name: "User"
  belongs_to :account, default: -> { creator&.account }

  has_many :accesses, dependent: :destroy
end
