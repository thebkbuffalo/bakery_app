# create_table(:users) do
#   primary_key :id
#   String :email, :size=>200, :null=>false
#   String :name, :size=>250, :null=>false
#   String :role, :size=>42, :null=>false
# end

class User < Sequel::Model
  one_to_many(:recipes)

      # def baker?
      #   role == "baker"
      # end
      #
      # def patisserie?
      #   role == "patisserie"
      # end
      #
      # def customer?
      #   role == "customer"
      # end
end
