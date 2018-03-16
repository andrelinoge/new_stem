class CreateProjectImages < ActiveRecord::Migration[5.1]
  def change
    create_table :project_images do |t|
      t.string :image
      t.references :project

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        ProjectImage.create_translation_table!({
          title: :string,
          description: :text
        })
      end

      dir.down do
        ProjectImage.drop_translation_table!
      end
    end
  end
end
