class Painting < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images

  has_many :category_paintings
  has_many :categories, through: :category_paintings
end
