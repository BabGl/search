class ChefsController < ApplicationController
    
    def index
         @chefs = Chef.paginate(page: params[:page], per_page: 4)
    end
    def new
    @chef = Chef.new
    end
    
    def create
    @chef = Chef.new(chef_params)
    if @chef.save
        flash[:success] = "uw account is  gemaakt"
    session[:chef_id] = @chef.id
    redirect_to recipes_path
    else
        render 'new'
    end
    end
    
    def edit
        @chef = Chef.find(params[:id])
    end
    
    def update
        @chef = Chef.find(params[:id])
        if @chef.update(chef_params)
   flash[:success] = "uw account is bewerk"
   redirect_to recipes_path
   else
       render 'edit'

        end
    end
    
    def show
    @chef = Chef.find(params[:id]) 
    @recipes = @chef.recipes.paginate(page: params[:page], per_page:3)
    end
    
    private 
    
    def chef_params
        params.require(:chef).permit(:chefname, :email, :password)
    end
end
    