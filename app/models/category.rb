class Category < ApplicationRecord
  has_many :category_paintings
  has_many :paintings, through: :category_paintings
end
