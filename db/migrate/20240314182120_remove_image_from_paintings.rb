class RemoveImageFromPaintings < ActiveRecord::Migration[7.0]
  def change
    remove_column :paintings, :image, :string
  end
end
