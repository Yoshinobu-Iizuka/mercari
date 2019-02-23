class RemoveItemIdFromBrands < ActiveRecord::Migration[5.0]
  def change
    remove_column :brands, :item_id, :integer
  end
end
