class UsersController < ApplicationController  
    before_action :valid?, except:[:new, :create, :show]
    
    def new
       @user = User.new
    end
  
    def create
      
      @user = User.new(user_params)
      if @user.save
        redirect_to login_path
      else 
        flash[:message] = @user.errors.full_messages
        render :new
      end
    end

    def show
      user = session[:user]
      if user
        @user = User.all.find(params[:id]) 
      else
        redirect_to "/"
      end
    
    end


    def edit
      
        @user = User.all.find(user) 
      
    end

    def update
      @user = User.all.find(user)
      @user.name = params[:user][:name]
      @user.bio = params[:user][:bio]
      @user.age = params[:user][:age]
      @user.save
      redirect_to user_path(user)
    
    end

    def destroy
      @user = User.find(user)
      @user.user_preferences.destroy_all
      @user.destroy
    end


    def landing
      @user = User.find(user)
     
    end

    def interests
        @user = User.all.find(user)
        @preferences = Preference.all
        @user_preferences = UserPreference.all.select {|up| up.user_id == user}
        
        @user_preference = UserPreference.new
        
              
    end


    private

    def user_params
      params.require(:user).permit(:user_name, :password, :name, :age, :bio)
    end
  end
  