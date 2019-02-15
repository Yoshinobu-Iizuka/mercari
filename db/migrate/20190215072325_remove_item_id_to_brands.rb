class RemoveItemIdToBrands < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :brands, column: :item_id
  end
end
