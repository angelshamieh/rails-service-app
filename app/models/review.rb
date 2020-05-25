class Review < ApplicationRecord
  belongs_to :user

  validates :rating, presence: true
  validates :rating, :inclusion => 1..10
end
