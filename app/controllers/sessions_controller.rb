class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    if params[:username].present?
      session[:username] = params[:username]
      redirect_to root_path
    else
      redirect_to
  end
  
  def destroy
    session.delete :username
  end
  
end
