class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :before_comment
      t.text :trade_comment
      t.references :user,     foreign_key: true
      t.references :item,     foreign_key: true
      t.integer :buyer_id
      t.references :trade,    foreign_key: true

      t.timestamps
    end
  end
end
