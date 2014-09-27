class UsersController < ApplicationController
  get('/') do
    render(:erb, :"users/index")
  end

  get('/new') do
    render(:erb, :"users/new")
  end




end # ends class
