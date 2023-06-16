class Genre < ApplicationRecord
  has_many :images, dependent: :destroy
end
