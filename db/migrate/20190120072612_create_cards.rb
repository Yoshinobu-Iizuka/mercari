class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :number,                     null: false
      t.integer :expiration_date_month,      null: false
      t.integer :expiration_date_year,       null: false
      t.references :user,                    foreign_key: true

      t.timestamps
    end
  end
end
