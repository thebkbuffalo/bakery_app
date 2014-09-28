# db/migrations/001/adds_table_users.rb

Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :email, :size=>200, :null=>false
      String :name, :size=>250, :null=>false
      String :role, :size=>42, :null=>false
      String :password, :size=>42, :null=>false
    end
  end
end
