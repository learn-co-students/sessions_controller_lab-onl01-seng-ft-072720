class SessionsController < ApplicationController

    def new
        
    end

    # def create
    #     if session[:name]
    #         redirect_to '/index'
    #     else
    #         if !params[:name] || params[:name].empty?
    #             redirect_to login_path
    #         else
    #             session[:name] = params[:name]
    #         end
    #     end
    # end

     def create
    return redirect_to(controller: 'sessions',
        action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to controller: 'application', action: 'hello'
  end

    def destroy
        session.delete :name
    end


end
