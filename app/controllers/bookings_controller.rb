class BookingsController < ApplicationController

  respond_to :html, :json, :xml

  def index
    @bookings = Booking.all
    respond_with @bookings
  end

  def show
    @booking = Booking.find(params[:id])
    respond_with @booking
  end

  def new
    @booking = Booking.new
  end


  def edit
    @booking = Booking.find(params[:id])
  end


  def create
    @booking = Booking.new(params[:booking])
    @booking.save
    respond_with @booking
  end


  def update
    @booking = Booking.find(params[:id])
    @booking.update_attributes(params[:booking])
    respond_with @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    respond_with @booking
  end
end
