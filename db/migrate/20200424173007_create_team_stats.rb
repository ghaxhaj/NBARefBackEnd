class CreateTeamStats < ActiveRecord::Migration[6.0]
  def change
    create_table :team_stats do |t|
      t.integer :season
      t.integer :team_id
      t.float :ppg
      t.float :papg
      t.float :rpg
      t.float :apg
      t.float :spg
      t.float :bpg
      t.float :topg
      t.float :fgper
      t.float :threefgper
      t.float :ftper
      t.float :efgper

      t.timestamps
    end
  end
end
