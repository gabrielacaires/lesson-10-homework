class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    redirect_to categories_path
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Category created successfully"

      redirect_to categories_path
    else
      # flash[:error] = "There was an error saving this category"

      render :new
    end
  end  

  def edit
    @category = Category.find_by_id(params[:id])
  end
  
  def update
    @category = Category.find_by_id(category_params)

    if @category.update(category_params)
      flash[:notice] = "The category was updated successfully"
      
      redirect_to categories_path
    else
      # flash[:error] = "There was a problem updating this category"

      render :edit
    end 
  end

  def destroy
    @category = Category.find_by_id(params[:id])

    @category.delete

    redirect_to categories_path
  end  

  def category_params
    params.require(:category).permit(:name)
  end  
end  