class AddGrandchildCategoryRefToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :grandchild_category, foreign_key: true
  end
end
