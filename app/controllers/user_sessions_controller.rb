class UserSessionsController < ApplicationController

  layout 'login'

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:username], params[:password])
      redirect_back_or_to('/', notice: t('login.success_message'))
    else
      flash.now[:error] = t 'login.fail_message'
      render action: "new"
    end
  end

  def destroy
    logout
    redirect_to(login_url, notice: t('login.logout_message'))
  end

end
