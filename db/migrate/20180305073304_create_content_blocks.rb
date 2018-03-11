class CreateContentBlocks < ActiveRecord::Migration[5.1]
  def change
    create_table :content_blocks do |t|
      t.string :key, index: true
      t.boolean :visible, default: true
      t.string :image

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        ContentBlock.create_translation_table!({
          title: :string,
          small_title: :string,
          content: :text,
        })
      end

      dir.down do
        ContentBlock.drop_translation_table!
      end
    end
  end
end
