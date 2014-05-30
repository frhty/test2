class UserController < ApplicationController
    def signin
    auth_hash = request.env['omniauth.auth']
    render :json=> auth_hash
  end
end