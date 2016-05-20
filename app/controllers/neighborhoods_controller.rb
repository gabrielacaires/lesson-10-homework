class NeighborhoodsController < ApplicationController
  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find_by_id(params[:id])

    redirect_to edit_neighborhood_path(@neighborhood)
  end

  def edit
    @neighborhood = Neighborhood.find_by_id(params[:id])
  end

  def update
    @neighborhood = Neighborhood.find_by_id(params[:id])

    if @neighborhood.update(neighborhood_params)
      flash[:notice] = "The neighborhood was updated successfully"
    
      redirect_to neighborhoods_path
    else
      # flash.now[:error] = "There was a problem updating this neighborhood"

      render :edit
    end
  end

  def new
    @neighborhood = Neighborhood.new
  end
  
  def create
    @neighborhood = Neighborhood.new(neighborhood_params)

    if @neighborhood.save
      flash[:notice] = "Neighborhood created successfully"

      redirect_to neighborhoods_path
    else
      # flash.now[:error] = "There was a problem saving this neighborhood"

      render :new
    end  
  end  

  def destroy
    @neighborhood = Neighborhood.find_by_id(params[:id])

    @neighborhood.delete

    redirect_to neighborhoods_path
  end
     
  def neighborhood_params
    params.require(:neighborhood).permit(:name)
  end  
end  