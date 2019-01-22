class AddIndexToitem < ActiveRecord::Migration[5.0]
  def change
    add_index :items, :condition
  end
end
