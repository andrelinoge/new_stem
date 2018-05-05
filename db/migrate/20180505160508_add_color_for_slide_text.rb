class AddColorForSlideText < ActiveRecord::Migration[5.1]
  def change
  	add_column :slides, :text_color, :string, default: '#fff'
  end
end
