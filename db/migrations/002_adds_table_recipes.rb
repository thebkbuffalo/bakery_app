# db/migrations/002_adds_table_recipes

Sequel.migration do
  change do
    create_table(:recipes) do
      primary_key :id
      String :name, :size=>250, :null=>false
      String :ingredients, :size=>4000, :null=>false
      Float :cost, :size=>8, :null=>false
      Integer :total_cookies, :size=>4, :null=>false
      foreign_key :user_id, :users, :null=>false, :key=>[:id]
    end
  end
end
