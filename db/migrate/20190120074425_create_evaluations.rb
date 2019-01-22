class CreateEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluations do |t|
      t.references :user,       foreign_key: true
      t.integer :buyer,         foreign_key: true
      t.text :comment
      t.integer :value

      t.timestamps
    end
  end
end
