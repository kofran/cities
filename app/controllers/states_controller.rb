class StatesController < ApplicationController
  # select all the states order by name
  def index
    @states = State.all.order(name: :asc)
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      redirect_to :back
    else
      render :new
    end
  end

  def state_params
    params.require(:state).permit(:name)
  end
end
