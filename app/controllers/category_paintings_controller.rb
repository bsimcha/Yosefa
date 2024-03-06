class CategoryPaintingsController < ApplicationController
  def create
    @category_painting = CategoryPainting.new(
      painting_id: params[:painting_id],
      category_id: params[:category_id],
    )
    if @category_painting.save
      render json: { message: "Painting Catigorized Successfully" }, status: :created
    else
      render json: { errors: @category_painting.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @category_paintings = CategoryPainting.all
    render :index
  end
end
