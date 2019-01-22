class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name,                     null: false, index: true
      t.text :details,                    null: false
      t.string :condition,                null: false
      t.integer :price,                   null: false
      t.string :size
      t.string :shipping_charge_borne,    null: false
      t.string :shipping_method,          null: false
      t.string :shipment_source_area,     null: false
      t.string :estimated_shipping_date,  null: false
      t.references :user,                 foreign_key: true
      t.integer :buyer_id

      t.timestamps
    end
  end
end
