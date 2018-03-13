class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :image

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Service.create_translation_table!({
          title: :string,
          content: :text,
        })
      end

      dir.down do
        Service.drop_translation_table!
      end
    end
  end
end
