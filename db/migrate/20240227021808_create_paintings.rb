class CreatePaintings < ActiveRecord::Migration[7.0]
  def change
    create_table :paintings do |t|
      t.string :image
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
