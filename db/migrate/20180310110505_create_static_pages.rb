class CreateStaticPages < ActiveRecord::Migration[5.1]
  def change
    create_table :static_pages do |t|
      t.string :key

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        StaticPage.create_translation_table!({
          content: :text,
          meta_keys: :string,
          label: :string,
          meta_description: :text,
        })
      end

      dir.down do
        StaticPage.drop_translation_table!
      end
    end
  end
end
