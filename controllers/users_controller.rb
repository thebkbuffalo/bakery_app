class UsersController < ApplicationController

  get('/') do
    render(:erb, :'users/index')
  end

  get('/new') do
    render(:erb, :'users/new')
  end

    get('/:id/edit') do
    render(:erb, :'users/edit')
  end

  get('/:id') do
    render(:erb, :'users/show')
  end

  post('/') do
    binding.pry
    User.create({
      email: params[:email],
      name: params[:name],
      password: params[:password],
      password: params[:password_confirmation],
      role: params[:role]
      })
    redirect ('/')
  end
end # ends class
