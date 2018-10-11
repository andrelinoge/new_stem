class CreateFastenings < ActiveRecord::Migration[5.1]
  def change
    create_table :fastenings do |t|
      t.string :name
      t.integer :category, default: 0
      t.float :price_per_kw

      t.timestamps
    end
  end
end
