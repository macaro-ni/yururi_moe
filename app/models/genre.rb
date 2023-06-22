class Genre < ApplicationRecord
  has_many :images, dependent: :destroy
  has_many :pictures, dependent: :destroy
end
