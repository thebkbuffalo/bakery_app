

class Recipe < Sequel::Model
  many_to_one(:users)
end
