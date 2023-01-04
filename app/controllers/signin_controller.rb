class SigninController < ApplicationController
    def new
    end
    def create
        @user=User.find_by(email: params[:email],password: params[:password])
        
        if @user            
            session[:id] = @user.id
            session[:name] = @user.name

            redirect_to home_path
        else
            message = "something went wrong"
            redirect_to signin_path, notice: message
        end
    end
    


end
