class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :cover

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Blog.create_translation_table!({
          title: :string, 
          description: :text,
          content: :text,
          meta_keys: :string, 
          meta_description: :text,
        })
      end

      dir.down do
        Blog.drop_translation_table!
      end
    end
  end
end