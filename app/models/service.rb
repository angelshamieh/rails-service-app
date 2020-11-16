class Service < ApplicationRecord
  belongs_to :user, optional: true
  has_one :booking
  has_one_attached :photo

  validates :offered_title, presence: true
  validates :needed_title, presence: true
  validates :description_offered, presence: true
  validates :description_needed, presence: true
  validates :location, presence: true

  validates :offered_title, length: { maximum: 500 }
  validates :needed_title, length: { maximum: 500 }
end
