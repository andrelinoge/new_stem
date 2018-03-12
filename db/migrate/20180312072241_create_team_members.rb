class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.string :photo

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        TeamMember.create_translation_table!({
          name: :string,
          position: :string
        })
      end

      dir.down do
        TeamMember.drop_translation_table!
      end
    end
  end
end
