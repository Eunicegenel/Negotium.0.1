class CategoriesController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
    @cat = Category.new
    @id = session[:user_id]
  end

  def change
    @cat_id = params[:cat_id]
    if @cat_id == nil
      redirect_to '/authorized'
    else
      @cat = Category.find_by(id: @cat_id)
    end
  end

  def create
    @cat = Category.new(cat_params)
    if @cat.save 
      redirect_to '/authorized'
    else
      render :new
    end 
  end

  def update  
    @cat = Category.find_by_id(params[:id])
    if @cat.update(cat_params)
      redirect_to '/authorized'
    else
      render '/categories/change'
    end
  end

  private 

  def cat_params
    params.require(:category).permit(:cat_name,:user_id,:cat_details)
  end
end
