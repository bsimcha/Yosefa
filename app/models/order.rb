class Order < ApplicationRecord
  has_many :carted_paintings
end
