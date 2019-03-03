class ChangeColumnToUser < ActiveRecord::Migration[5.0]
  def change
      change_column :users, :postal_code, :integer,       null: true
      change_column :users, :prefecture, :string,         null: true
      change_column :users, :city, :string,               null: true
      change_column :users, :address_first, :string,      null: true
      change_column :users, :address_second, :string,     null: true
      change_column :users, :telephone, :string,          null: true
    end

    def down
      change_column :users, :postal_code, :integer,       null: false
      change_column :users, :prefecture, :string,         null: false
      change_column :users, :city, :string,               null: false
      change_column :users, :address_first, :string,      null: false
      change_column :users, :address_second, :string,     null: false
      change_column :users ,:telephone, :string,          null: false
    end
end
