class RemoveItemRefToItemCategory < ActiveRecord::Migration[5.0]
  def change
    remove_reference :item_categories, :item, foreign_key: true
  end
end
