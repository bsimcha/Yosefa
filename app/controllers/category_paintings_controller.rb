class CategoryPaintingsController < ApplicationController
  def create
    @category_painting = CategoryPainting.create(
      painting_id: params[:painting_id],
      category_id: params[:category_id],
    )
    render :index
  end

  def index
    @category_paintings = CategoryPainting.all
    render :index
  end
end
