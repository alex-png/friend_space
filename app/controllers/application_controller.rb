class ApplicationController < ActionController::Base
   
    def user
        if session[:user]
            User.all.find(session[:user]).id
        end
    end

    def valid?
        redirect_to "/" unless user  
    end




end ########END OF CLASS###########
