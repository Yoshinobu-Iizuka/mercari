class RemoveReferencesGrandChildCategory < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :grandchild_categories, column: :child_category_id
    remove_index :grandchild_categories, :child_category_id
    remove_column :grandchild_categories, :child_category_id
  end
end
