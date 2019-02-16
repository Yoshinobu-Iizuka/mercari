class RemoveCategoryRefToItemCategory < ActiveRecord::Migration[5.0]
  def change
    remove_reference :item_categories, :category, foreign_key: true
  end
end
