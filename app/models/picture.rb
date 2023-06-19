class Picture < ApplicationRecord
  has_one_attached :image
  belongs_to :genre

  validates :name, presence: true
  validates :genre_id, presence: true
  validates :image, presence: true
end
