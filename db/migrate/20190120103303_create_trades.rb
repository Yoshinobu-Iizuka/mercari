class CreateTrades < ActiveRecord::Migration[5.0]
  def change
    create_table :trades do |t|
      t.string :deposit
      t.integer :shipping_notification
      t.references :item,    foreign_key: true
      t.references :user,    foreign_key: true

      t.timestamps
    end
  end
end
