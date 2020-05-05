class UserController < ApplicationController
  # route(get): /login
  def login_form
      @user = User.new
    render layout: false
  end

  #route(post): /login
  def login

  end
end
