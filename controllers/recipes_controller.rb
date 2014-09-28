# create_table(:recipes) do
#   primary_key :id
#   String :name, :size=>250, :null=>false
#   String :ingredients, :size=>4000, :null=>false
#   Float :cost, :size=>8, :null=>false
#   Integer :total_cookies, :size=>4, :null=>false
#   foreign_key :user_id, :users, :null=>false, :key=>[:id]
# end


class RecipesController < ApplicationController

  get('/') do
    @recipes = Recipe.all
    render(:erb, :'recipes/index')
  end

  get('/new') do
    render(:erb, :'recipes/new')
  end

  get('/:id') do
    render(:erb, :'recipes/show')
  end

  get('/:id/edit') do
    render(:erb, :'recipes/edit')
  end

  # adds a new recipe
  post('/') do
    Recipe.create({
      name: params[:name],
      ingredients: params[:ingredients],
      cost: params[:cost],
      total_cookies: params[:total_cookies]
      })
      redirect to('/')
  end

end # end's class
