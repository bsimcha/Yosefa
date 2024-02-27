class OrdersController < ApplicationController
  def create
    painting = Painting.find_by(id: params[:painting_id])

    calculated_subtotal = painting.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      painting_id: params[:painting_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    if @order.save
      render :show
    else
      render json: { errors: @order.errors.full_messages }
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def index
    @orders = Order.all
    render :index
  end

  def destroy
    @order = Order.find_by(id: params["id"])
    @order.destroy
    render json: { message: "Order successfully deleted" }
  end
end
