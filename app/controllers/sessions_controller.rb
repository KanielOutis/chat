class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_url, alert: "Неверный логин или пароль"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Сессия завершена"
  end
end
