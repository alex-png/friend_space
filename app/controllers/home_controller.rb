class HomeController < ApplicationController
before_action :user
def show
    if user 
        redirect_to user_landing_path(user.id)
    else
    end
end


end