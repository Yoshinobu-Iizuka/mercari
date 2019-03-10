class DropToItemCategory < ActiveRecord::Migration[5.0]
  def change
    drop_table :item_categories
  end
end
