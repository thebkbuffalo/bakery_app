class SessionsController < ApplicationController

  get('/') do
    render(:erb, :'sessions/index')
  end

  get('/new') do
    render(:erb, :'sessions/new')
  end

    post('/session') do
    user = User.find(name: params[:user_name])
    if user.nil?
      Viewer.create(new_user)
      redirect to('/viewer/id')
    else
      set_current_user_as user
      redirect to("/viewers/#{current_user.id}")
    end
  end
end # end's class
