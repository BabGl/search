class LoginsController < ApplicationController
   
    def new
        
    end
    
    
    
    
    def create
        
        chef = Chef.find_by(email: params[:email])
        if chef && chef.authenticate(params[:password])
            session[:chef_id] = chef.id
            flash[:success] = "U bent ingelogd"
            redirect_to recipes_path
        
        else
            flash.now[:danger] = "Uw email of paswoord is niet correct"          
            render 'new'
        end
    
    end

    
    
    
    def destroy
        session[:chef_id] = nil
flash[:success] = "U bent uitgelogd"
redirect_to root_path
    end
    
    
    
    
end