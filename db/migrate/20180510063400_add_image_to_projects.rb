class AddImageToProjects < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :page_cover, :string
  end
end
