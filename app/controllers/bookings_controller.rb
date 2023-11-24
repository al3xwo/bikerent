class BookingsController < ApplicationController
    before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new
    @dates_to_disable = @bike
                      .bookings
                      .where('checkout > ?', Date.yesterday)
                      .pluck(:checkin, :checkout)
                      .map do |(checkin, checkout)|
                        { from: checkin, to: checkout }
                      end
  end

  def edit
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params.except(:checkin))
    dates = booking_params[:checkin].split(' to ')
    checkin, checkout = dates
    @booking.checkin = Date.parse(checkin)
    @booking.checkout = Date.parse(checkout)
    @booking.user = current_user
    @booking.bike = @bike
    if @booking.save
      redirect_to bikes_path(@bikes), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to @booking, notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_url, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :event_id, :checkin, :status)
  end
end
