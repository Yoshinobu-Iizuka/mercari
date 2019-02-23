class RemoveIndex < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :child_categories, column: :category_id
    remove_index :child_categories, :category_id
    remove_column :child_categories, :category_id
  end
end
