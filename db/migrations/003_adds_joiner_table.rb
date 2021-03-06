# db/migrations/003_adds_joiner_table

Sequel.migration do
  change do
    create_table(:recipes_users) do
      primary_key :id
      foreign_key :recipe_id, :recipes
      foreign_key :user_id, :users  
    end
  end
end
