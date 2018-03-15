class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :cover

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Project.create_translation_table!({
          title: :string,
          description: :text,
          content: :text,
          meta_keys: :string,
          meta_description: :text
        })
      end

      dir.down do
        Project.drop_translation_table!
      end
    end
  end
end
