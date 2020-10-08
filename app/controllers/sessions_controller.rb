class SessionsController < ApplicationController
  def new
    
  end

  def create
    if !!session[:name]
      redirect_to :root
    elsif params[:name] != nil && params[:name] != ""
    session[:name] = params[:name]
       redirect_to :root
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
  end

end