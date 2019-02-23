class AddColumnToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :year, :integer,   null: false
    add_column :users, :month, :integer,  null: false
    add_column :users, :day, :integer,    null: false
  end
end
