class BikesController < ApplicationController
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
    if params[:query].present?
      @bikes = Bike.search_by_location_and_category(params[:query])
    else
      @bikes = Bike.all
    end
  end

  def show
    # @ booking
    # Assumes set_bike method sets @bike instance variable
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to @bike, notice: 'Bike was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # Assumes set_bike method sets @bike instance variable
  end

  def update
    # Assumes set_bike method sets @bike instance variable

    if @bike.update(bike_params)
      redirect_to @bike, notice: 'Bike was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy
    redirect_to bikes_url, notice: 'Bike was successfully destroyed.'
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:name, :description, :price, :category, :photo, :location)
  end
end
