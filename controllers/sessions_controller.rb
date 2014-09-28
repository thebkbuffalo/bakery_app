class SessionsController < ApplicationController

  get('/') do
    render(:erb, :'sessions/index')
  end

  get('/new') do
    render(:erb, :'sessions/new')
  end

    post('/') do
    user = User.find(params[:user])
    if user.nil?
      Viewer.create(new_user)
      redirect to('/viewer/id')
    else
      set_current_user_as user
      redirect to("/viewers/#{current_user.id}")
    end
  end

  delete('/') do
    remove_current_user
    redirect to('/')
  end
end # end's class
