class AddPasswordDigestToGames < ActiveRecord::Migration
  def change
    add_column :games, :password_digest, :string
  end
end
