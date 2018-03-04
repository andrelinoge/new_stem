class CreateSiteSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :site_settings do |t|
      t.string :key, index: true

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        SiteSetting.create_translation_table! value: :string, label: :string
      end

      dir.down do
        SiteSetting.drop_translation_table!
      end
    end
  end
end
