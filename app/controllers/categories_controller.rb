class CategoriesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

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

  def update
    @category = Category.find_by(id: params[:id])
    @category.update(
      name: params[:name] || @category.name,

    )
    render :show
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: { message: "Category destroyed successfully" }
  end
end
