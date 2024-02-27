class CartedPainting < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :painting
end
