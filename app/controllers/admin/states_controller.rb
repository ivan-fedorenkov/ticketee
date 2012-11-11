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

end
