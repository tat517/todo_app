class SessionsController < ApplicationController
  before_action :autheniticate_user, {only: [:destroy]}
  before_action :forbid_login_user, only: [:new, :create]
  
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'メールアドレスまたは、パスワードが間違っています。'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to "/"
  end
end