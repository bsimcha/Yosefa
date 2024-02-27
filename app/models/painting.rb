class Painting < ApplicationRecord
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  has_many :carted_paintings
  has_many :category_paintings
  has_many :categories, through: :category_paintings
end
