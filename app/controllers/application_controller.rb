class ApplicationController < ActionController::Base
  include SessionsHelper
  
  def autheniticate_user
    if current_user==nil
        flash[:notice]="ログインが必要です"
        redirect_to login_path
    end
  end
  
  def forbid_login_user
    if current_user
      flash[:notice] = "すでにログインしています"
      redirect_to tasks_path
    end
  end
  
end
