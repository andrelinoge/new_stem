class CreateInverters < ActiveRecord::Migration[5.1]
  def change
    create_table :inverters do |t|
      t.string :name
      t.integer :category, default: 0
      t.float :price
      t.integer :range_min
      t.integer :range_max

      t.timestamps
    end
  end
end
