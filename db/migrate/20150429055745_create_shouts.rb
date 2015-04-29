class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :content
    end
  end
end
