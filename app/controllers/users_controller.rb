class UsersController < ApplicationController
    def default_url_options
        { locale: I18n.locale }
      end
    def index
        @users = User.all
    end
    def new
        @user = User.new
    end
    def create
        @user = User.new(user1_params)
        if @user.save
           redirect_to "/signin"
        else
            render :new , status: :unprocessable_entity
        end
    end
    
    private
        def user1_params
            params.require(:user).permit(:name , :email, :password, :date , :month , :year , :gender)
        end
end
