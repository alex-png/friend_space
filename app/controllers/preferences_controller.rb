class PreferencesController < ApplicationController
    before_action :valid?, except:[:index]

    def index
        @user = user
        @preferences = Preference.all
    end

    def show
        @user = user
        @preference = Preference.all.find(params[:id])
        @posts = Post.all.select{ |p| p.preference_id == @preference.id} 
    end

    def add_post
    Post.create(user_id: user, preference_id: params[:id], comment:params[:post][:comment])
    redirect_to interest_path(params[:id])
    end

end
