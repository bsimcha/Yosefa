class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
    render :index
  end

  def show
    @painting = Painting.find_by(id: params[:id])
    render :show
  end
end
