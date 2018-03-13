class CreateSlides < ActiveRecord::Migration[5.1]
  def change
    create_table :slides do |t|
      t.string :image

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Slide.create_translation_table!({
          title: :string,
          small_title: :string,
          content: :text,
        })
      end

      dir.down do
        Slide.drop_translation_table!
      end
    end
  end
end
