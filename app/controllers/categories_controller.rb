class CategoriesController < ApplicationController
  def create
    @category = Category.create(
      name: params[:name],
    )
    render :show
  end

  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params[:id])
    render :show
  end
end
