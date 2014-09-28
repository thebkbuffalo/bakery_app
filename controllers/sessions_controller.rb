class SessionsController < ApplicationController

  get('/') do
    render(:erb, :'sessions/index')
  end

  get('/new') do
    render(:erb, :'sessions/new')
  end

    post('/') do
    user = User.find(name: params[:name])
    if user.nil?
     redirect to('/')
    else
      current_user_id = user.id
      session[:current_user] = {id: current_user_id}
      redirect to('/')
    end
  end

  delete('/') do
    remove_current_user
    redirect to('/')
  end
end # end's class
