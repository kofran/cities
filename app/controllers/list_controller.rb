class ListController < ApplicationController
  def index
    @ci = City.joins(:states).select('cities.name, states.name')
  end
end
