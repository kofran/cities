class CitiesController < ApplicationController
  def index
    @cities = City.all.order(name: :asc)

  end

  def new
    @city = City.new
    @states = State.all.order(name: :asc)
  end

  def create
    @city = City.new(city_params)
    if @city.save(:validate=> true)
      render 'index'
    else
      render :new
    end
  end

  def city_params
    params.require(:city).permit(:name, :state_id)
  end
end
