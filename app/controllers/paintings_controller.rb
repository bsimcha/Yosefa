class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
    render :index
  end
end
