class CategoryPainting < ApplicationRecord
  belongs_to :category
  belongs_to :painting
end
