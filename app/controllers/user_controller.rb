class UserController < ApplicationController
  # get: /login
  def login_form
    @user = User.new
    render layout: false
  end

  # post: /login
  def login
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to("/diary/index")
    else
      @user = User.new
      @error_message = "メールアドレスまたはパスワードが間違っています。"
      @email = params[:user][:email]
      @password = params[:user][:password]
      render("user/login_form", layout: false)
    end
  end

  # delete: /logout
  def logout
    session[:user_id] = nil
    redirect_to("/")
  end
end
