class RecipesController < ApplicationController
 
 def index
    @recipes = Recipe.all 
 end
    
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def new
    @recipe = Recipe.new
  end
    
    def create
       @recipe = Recipe.new(recipe_params)
       @recipe.chef = Chef.find(8)
       
       if @recipe.save
      flash[:success] = "Uw Recept is aangemaakt"
      redirect_to recipes_path
      elsif render :new
       end
       
       end
   def edit
        @recipe = Recipe.find(params[:id])
   end
  def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
        flash[:success] = "Uw Recept is bewerkt"
        redirect_to recipes_path(@recipe)
        else
          render :edit
        end
    end
    
     private 
     def recipe_params
    params.require(:recipe).permit(:naam,:overzicht, :ingredient,:beschrijving)
     end
    
    
end