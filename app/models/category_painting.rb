class CategoryPainting < ApplicationRecord
  validates :category_id, uniqueness: { scope: :painting_id, message: "can only be used once per painting" }
  belongs_to :category
  belongs_to :painting
end
