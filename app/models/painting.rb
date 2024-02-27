class Painting < ApplicationRecord
  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  has_many :carted_paintings
end
