class SessionsController < ApplicationController 

    def new 
    end 
    
    def create 
        
        if params[:name] == nil || params[:name] == ""
            redirect_to "/"
        else
            session[:name] = params[:name]
            redirect_to "/"
        end

    end 

    def destroy 
        if logged_in?
            session.delete :name
        end
    end
end