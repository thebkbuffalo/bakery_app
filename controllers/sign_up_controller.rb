class SignUpController < ApplicationController
  get('/sign_up') do
    render(:erb, :index)
  end
end
