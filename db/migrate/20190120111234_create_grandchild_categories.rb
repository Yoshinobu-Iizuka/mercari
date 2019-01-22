class CreateGrandchildCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :grandchild_categories do |t|
      t.string :name,                 null: false
      t.references :child_category,   foreign_key: true

      t.timestamps
    end
  end
end
