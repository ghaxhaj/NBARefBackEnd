class CreatePlayerStats < ActiveRecord::Migration[6.0]
  def change
    create_table :player_stats do |t|
      t.integer :season
      t.integer :player_id
      t.integer :games_played
      t.float :mpg
      t.integer :fgm
      t.integer :fga
      t.float :fgper
      t.integer :three_pm
      t.integer :three_pa
      t.float :three_per
      t.integer :ftm
      t.integer :fta
      t.float :ftper
      t.float :orpg
      t.float :drpg
      t.float :trpg
      t.float :apg
      t.float :bpg
      t.float :spg
      t.float :ppg
      t.float :topg

      t.timestamps
    end
  end
end
