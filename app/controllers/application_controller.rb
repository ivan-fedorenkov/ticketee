class ApplicationController < ActionController::Base
  before_filter :find_states
  protect_from_forgery

  private
    def find_states
      @states = State.all
    end
end
