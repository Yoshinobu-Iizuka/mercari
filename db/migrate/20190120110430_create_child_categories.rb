class CreateChildCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :child_categories do |t|
      t.string :name,          null: false
      t.references :category,  foreign_key: true

      t.timestamps
    end
  end
end
