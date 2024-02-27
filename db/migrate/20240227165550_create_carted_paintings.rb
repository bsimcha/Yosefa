class CreateCartedPaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :carted_paintings do |t|
      t.integer :painting_id
      t.integer :quantity
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
