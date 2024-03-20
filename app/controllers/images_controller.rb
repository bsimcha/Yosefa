class ImagesController < ApplicationController
  def create
    @image = Image.new(
      painting_id: params[:painting_id],
      url: params[:url],
    )
    if @image.save
      render json: { message: "Image successfully created!" }, status: :created
    else
      render json: { errors: @image.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @images = Image.all
    render :index
  end

  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def update
    @image = Image.find_by(id: params["id"])
    @image.update(
      url: params["url"] || @image.url,
    )
    render :show
  end

  def destroy
    image = Image.find_by(id: params["id"])
    image.destroy
    render json: { message: "Image successfully deleted" }
  end
end
