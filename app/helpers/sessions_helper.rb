module SessionsHelper

    def logged_in?
        !!session[:name]
    end 
    def display_greeting
        if logged_in?
          "Hi, #{session[:name]}"
        else
          "Hi."
        end
    end

end
