class ApplicationController < ActionController::Base
  include SessionsHelper
  
  def autheniticate_user
    if current_user==nil
        flash[:notice]="ログインが必要です"
        redirect_to login_path
    end
  end
end
