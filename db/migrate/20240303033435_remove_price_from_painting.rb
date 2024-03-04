class RemovePriceFromPainting < ActiveRecord::Migration[7.0]
  def change
    remove_column :paintings, :price
  end
end
