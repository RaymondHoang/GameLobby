class AddRecipeReferenceToComment < ActiveRecord::Migration
  def change
    add_column :comments, :recipes, :reference
  end
end
