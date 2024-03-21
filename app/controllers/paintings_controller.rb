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
      if params[:uploads] && params[:uploads] != "null"
        response = Cloudinary::Uploader.upload(params["uploads"], resource_type: :auto)
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

  # def create
  #   @painting = Painting.create(
  #     description: params[:description],
  #   )
  #   render :show
  # end

  # def create
  #   if params[:url1].blank?
  #     render json: { errors: ["At least one image is required."] }, status: :unprocessable_entity
  #     return
  #   end

  #   @painting = Painting.create(

  #     description: params[:description],

  #   )

  #   (1..20).each do |i|
  #     if params["url#{i}"].present?
  #       @painting.images.build(url: params["url#{i}"])
  #     end
  #   end

  #   if @painting.save
  #     render json: { message: "Painting successfully created!" }, status: :created
  #   else
  #     render json: { errors: @painting.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  def update
    @painting = Painting.find_by(id: params[:id])
    @painting.update(
      # image: params[:image] || @painting.image,
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
