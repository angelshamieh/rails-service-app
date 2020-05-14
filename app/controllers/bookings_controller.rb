class BookingsController < ApplicationController
  before_action :find_service, only: [:show, :new, :create, :edit, :update]

  def show
    @booking = Booking.find(params[:service_id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save
      redirect_to service_booking_path(@booking.service, @booking), notice: 'Your booking was successful'
    else
      render :new
    end
  end

  def edit
    @booking = Booking.new(booking_params)
  end

  def update
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.update
    redirect_to service_booking_path(@service_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end

  def find_service
    @service = Service.find(params[:service_id])
  end
end
