class AddPositionToSlides < ActiveRecord::Migration[5.1]
  def change
  	add_column :slides, :position, :integer, default: 1
  end
end
