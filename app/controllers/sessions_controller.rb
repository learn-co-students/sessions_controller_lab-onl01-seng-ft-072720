class SessionsController < ApplicationController
  
  def index
  end
  
  def new
  end

  def create
    if params[:name]
      session[:name] = params[:name]
    end

    if session[:name].nil? || session[:name].blank?
      redirect_to "/login"
    elsif logged_in?
      redirect_to "/"
    end

  end

  def destroy
    if logged_in?
      session.delete :name
    end
  end

end
