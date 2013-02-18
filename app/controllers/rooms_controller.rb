class RoomsController < ApplicationController

  respond_to :html, :json, :xml

  def index
    @rooms = Room.paginate(page: params[:page])
    respond_with @rooms
  end

  def show
    @room = Room.find(params[:id])
    respond_with @room
  end

  def new
    @room = Room.new
  end


  def edit
    @room = Room.find(params[:id])
  end


  def create
    @room = Room.new(params[:room])
    @room.save
    respond_with @room
  end


  def update
    @room = Room.find(params[:id])
    @room.update_attributes(params[:room])
    respond_with @room
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    respond_with @room
  end
end
