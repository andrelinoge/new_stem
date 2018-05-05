class AddPositionToProjects < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :position, :integer, default: 1
  end
end
