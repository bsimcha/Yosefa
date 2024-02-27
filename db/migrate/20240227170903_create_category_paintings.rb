class CreateCategoryPaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :category_paintings do |t|
      t.integer :painting_id
      t.integer :category_id

      t.timestamps
    end
  end
end
