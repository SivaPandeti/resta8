class OrdersController < ApplicationController
  respond_to :html, :json

  def index
    @orders = Order.all
    respond_with @orders
  end

  def show
    @order = Order.find(params[:id])
    respond_with @order
  end

  def new
    @order = Order.new
  end


  def edit
    @order = Order.find(params[:id])
  end


  def create
    @order = Order.new(params[:order])
    @order.save
    respond_with @order
  end


  def update
    @order = Order.find(params[:id])
    @order.update_attributes(params[:order])
    respond_with @order
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    respond_with @order
  end


end
