class ServicesController < ApplicationController
  before_action :find_services, only: [:show, :edit, :update, :destroy]

  def index
    # @services = Service.all
    @services = policy_scope(Service).order(created_at: :desc)
  end

  def show
    authorize @service
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize @service
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @service.update(service_params)
    authorize @service
    redirect_to service_path(@service)
  end

  def destroy
    authorize @service
    @service.destroy
    redirect_to services_path
  end

  private

  def find_services
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:needed_title, :offered_title, :deadline,
     :available_dates, :description_offered, :description_needed, :location, :user_id, :photo)
  end
end
