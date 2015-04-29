class RemoveUserReferencesFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :user, :references
  end
end
