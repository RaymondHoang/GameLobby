class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :room
      t.integer :max_players
      t.integer :kind
      t.string :instance

      t.timestamps
    end
    add_index :games, :room
    add_index :games, :kind
    add_index :games, :instance
  end
end
