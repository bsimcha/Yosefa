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
    @painting = Painting.create(
      image: params[:image],
      description: params[:description],
      price: params[:price],
    )
    render :show
  end

  def update
    @painting = Painting.find_by(id: params[:id])
    @painting.update(
      image: params[:image] || @painting.image,
      description: params[:description] || @painting.description,
      price: params[:price] || @painting.price,
    )
    render :show
  end

  def destroy
    @painting = Painting.find_by(id: params[:id])
    @painting.destroy
    render json: { message: "Painting destroyed successfully" }
  end
end
