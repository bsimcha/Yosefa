class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
    render :index
  end

  def show
    @painting = Painting.find_by(id: params[:id])
    render :show
  end

  def create
    @paintings = Painting.create(
      image: params[:image],
      description: params[:description],
      price: params[:price],
    )
    render :show
  end

  def destroy
    @painting = Painting.find_by(id: params[:id])
    @painintg.destroy
    render json: { message: "Painting destroyed successfully" }
  end
end
