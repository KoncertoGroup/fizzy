class Account < ApplicationRecord
  has_many :users, dependent: :destroy

  has_many :projects, dependent: :destroy
  has_many :bubbles, through: :projects
end
