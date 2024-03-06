class Category < ApplicationRecord
  has_many :category_paintings, dependent: :destroy
  has_many :paintings, through: :category_paintings

  before_destroy :destroy_associated_category_paintings

  private

  def destroy_associated_category_paintings
    self.category_paintings.destroy_all
  end
end
