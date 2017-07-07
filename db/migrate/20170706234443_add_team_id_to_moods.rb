class AddTeamIdToMoods < ActiveRecord::Migration[5.1]
  def up
    change_table :moods do |t|
      t.column :team_id, :integer
    end
  end

  def down
    change_table :moods do |t|
      t.remove :team_id, :integer
    end
  end
end
