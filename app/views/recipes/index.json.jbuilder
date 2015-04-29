json.array!(@recipes) do |recipe|
  json.extract! recipe, :user_id, :id, :name, :mealtime, :style, :ingredient, :desc, :picture
  json.url recipe_url(recipe, format: :json)
end
