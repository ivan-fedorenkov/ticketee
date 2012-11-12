class Admin::StatesController < ApplicationController

  def index
  end

  def new
    @state = State.new
  end

  def create
    @state = State.new(params[:state])
    if @state.save
      flash[:notice] = "State has been created."
      render :action => "new"
    else
      flash[:alert] = "State has not been created."
      render :action => "new"
    end
  end

  def make_default
    @state = State.find(params[:id])
    @state.default!

    flash[:notice] = "#{@state.name} is now the default state."
    redirect_to admin_states_path
  end

end
