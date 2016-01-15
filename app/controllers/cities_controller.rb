class CitiesController < ApplicationController
  def index
    #@cities = City.all.order(state_id: :asc)
    #@cities = State.joins(:cities).select('cities.name, states.name')
    @cities = City.joins(:state).select('cities.name, states.name')
  end

  def new
    @city = City.new
    @states = State.all.order(name: :asc)
  end

  def create
    @city = City.new(city_params)
    if @city.save(:validate=> true)
      redirect_to :back
    else
      render :new
    end
  end

  def city_params
    params.require(:city).permit(:name, :state_id)
  end
end
