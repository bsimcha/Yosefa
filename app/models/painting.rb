class Painting < ApplicationRecord
  has_many :category_paintings
  has_many :categories, through: :category_paintings
end
