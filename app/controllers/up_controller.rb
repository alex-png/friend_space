class UpController < ApplicationController
    
    def add
        user = User.all.find(session[:user])       
        user_preference = UserPreference.create(user_id: user.id, preference_id: params[:preference][:id])
        
        redirect_to interests_path(user.id)
    end

    def destroy
       user = User.all.find(session[:user])       
        
        preference =  UserPreference.find(params[:user_preference][:id])
        preference.destroy
        redirect_to interests_path(user.id)
    end

    
end