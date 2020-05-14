class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :status, inclusion: { in: %w(Accepted Rejected Pending Processing), message: "%{value} is not a valid "}
  validates :status, presence: true
end

