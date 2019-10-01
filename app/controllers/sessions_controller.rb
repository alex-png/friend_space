class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.all.find_by(user_name: params[:user_name])
        if user && user.authenticate(params[:password])
            session[:user] = user.id
            redirect_to user_landing_path(user.id)
        else
            flash[:message] = "wrong username or password. try again. or give up. the choice is yours"
            redirect_to login_path
        end
    end

    def logout
        session[:user] = nil
        redirect_to "/"
    end

end

