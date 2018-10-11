class CreatePanels < ActiveRecord::Migration[5.1]
  def change
    create_table :panels do |t|
      t.string :name
      t.integer :category, default: 0
      t.float :price_per_kw

      t.timestamps
    end
  end
end
