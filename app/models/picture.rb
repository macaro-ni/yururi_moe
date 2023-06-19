class Picture < ApplicationRecord
  has_one_attached :image
  belongs_to :genre

  validates :name, presence: true
  validates :genre, presence: true
  # varidates :image, presence: true
end
