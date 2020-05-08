class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      
      t.integer :team_id
      t.string :name
      t.string :height
      t.string :position
      t.string :weight
      t.string :img
      t.integer :number
      t.integer :Stat_id

      t.timestamps
    end
  end
end
