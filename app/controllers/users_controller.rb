class UsersController < ApplicationController  
    before_action :valid?, except:[:new, :create, :show, :friends]
    
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
        @session_user = User.all.find(user)
        @comments = ProfileComment.all.select{|c| c.profile_id == params[:id].to_i}
        @user = User.all.find(params[:id]) 
        @follow =  Follow.new
      
      else
        redirect_to "/"
      end
    
    end
    
    def index
      @user = User.all.find(user)
      @users = User.all
    end



    def edit
      
        @user = User.all.find(user) 
      
    end

    def add_post
      ProfileComment.create(commenter_id: user, profile_id:params[:id], comment:params[:profile_comment][:comment])
      @comments = ProfileComment.all.select{|c| c.profile_id == params[:id].to_i}
      redirect_to user_path(params[:id])

    end

    def update
      @user = User.all.find(user)
      @user.update(name:params[:user][:name], age:params[:user][:age], bio:params[:user][:bio], image:params[:user][:image], song:params[:user][:song])
      redirect_to user_path(user)
    
    end

    def destroy
      @user = User.find(user)
      @user.user_preferences.destroy_all
      @user.destroy
      session[:user] = nil
      redirect_to "/"
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

    def add_friend
      follow = Follow.create(follower_id:params[:follow][:follower_id], followee_id:params[:follow][:followee_id])
      redirect_to request.referrer, notice: "you're now friends!"
    end

    def friends
      @session_user = User.all.find(user)
      @user = User.all.find(params[:id]) 
    end

    private

    def user_params
      params.require(:user).permit(:user_name, :password, :name, :age, :bio, :image, :song)
    end
  end
  