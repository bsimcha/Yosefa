class Image < ApplicationRecord
  belongs_to :painting
  has_one_attached :image
end
