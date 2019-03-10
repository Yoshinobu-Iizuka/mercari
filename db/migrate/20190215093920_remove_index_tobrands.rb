class RemoveIndexTobrands < ActiveRecord::Migration[5.0]
  def change
    remove_index :brands, :item_id
  end
end
