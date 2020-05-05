class UserController < ApplicationController
  # get: /login
  def login_form
    @user = User.new
    render layout: false
  end

  # post: /login
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to("/diary/index")
    else
      @user = User.new
      @error_message = "メールアドレスまたはパスワードが間違っています。"
      @email = params[:email]
      @password = params[:password]
      render("user/login_form", layout: false)
    end
  end
end
