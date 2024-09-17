class Project < ApplicationRecord
  belongs_to :account
  belongs_to :creator, class_name: "User", default: -> { Current.user }

  has_many :accesses, dependent: :destroy
  has_many :users, through: :accesses

  has_many :bubbles, dependent: :destroy

  after_create do
    accesses.create!(user: creator)
  end
end
