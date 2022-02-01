class RecipesController < ApplicationController
  before_action :check_if_logged_in, except: [:index, :show]
  def new
    @recipe = Recipe.new
    @category = Category.all
  end

  def create
  
    @recipe = Recipe.create recipe_params

    @recipe.user_id = @current_user.id
    @recipe.save
    if @recipe.persisted?
      
      @recipe.categories << Category.find(params[:categories][:ids])
      redirect_to recipes_path
    else
      render :new
    end
    
  end

  def index
    @recipes = Recipe.all.order :created_at
  end

  def show
    @recipe = Recipe.find params[:id]
  end

  def edit
    @recipe = Recipe.find params[:id]

  end

  def update
    recipe = Recipe.find params[:id]
    recipe.update recipe_params
    recipe.categories.clear
    redirect_to recipe_path(params[:id])
  end

  def destroy
    Recipe.destroy params[:id]
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :description, :method, :ingredients)
  end
end
