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
    pp params
    @painting = Painting.create(
      description: params[:description],
    )
    if @painting.valid?
      if params[:upload1] && params[:upload1] != "null"
        response = Cloudinary::Uploader.upload(params["upload1"], resource_type: :auto)
        image_url = response["secure_url"]
        @image = Image.create(
          url: image_url,
          painting_id: @painting.id,
        )
      end
      if params[:upload2] && params[:upload2] != "null"
        response = Cloudinary::Uploader.upload(params["upload2"], resource_type: :auto)
        image_url = response["secure_url"]
        @image = Image.create(
          url: image_url,
          painting_id: @painting.id,
        )
      end
      if params[:upload3] && params[:upload3] != "null"
        response = Cloudinary::Uploader.upload(params["upload3"], resource_type: :auto)
        image_url = response["secure_url"]
        @image = Image.create(
          url: image_url,
          painting_id: @painting.id,
        )
      end
      render :show
    else
      render json: { errors: @painting.errors.full_messages }, status: 422
    end
  end

  def update
    @painting = Painting.find_by(id: params[:id])
    @painting.update(
      description: params[:description] || @painting.description,
    )
    render :show
  end

  def destroy
    @painting = Painting.find_by(id: params[:id])
    @painting.destroy
    render json: { message: "Painting destroyed successfully" }
  end
end
