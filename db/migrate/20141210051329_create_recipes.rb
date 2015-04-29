class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :name
      t.string :mealtime
      t.string :style
      t.text :ingredient
      t.text :desc
      t.attachment :picture
      t.references :user, index: true
      
      t.timestamps null: false
      
    end
    add_index :recipes, [:user_id, :created_at]
  end
end
