class AddChildCategoryRefToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :child_category, foreign_key: true
  end
end
