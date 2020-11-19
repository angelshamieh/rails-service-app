class Service < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_offered_title_and_needed_title_and_location,
    against: [:offered_title, :needed_title, :location],
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :user, optional: true
  has_one :booking
  has_many_attached :photos

  validates :offered_title, presence: true
  validates :needed_title, presence: true
  validates :description_offered, presence: true
  validates :description_needed, presence: true
  validates :location, presence: true

  validates :offered_title, length: { maximum: 500 }
  validates :needed_title, length: { maximum: 500 }
end
