class State < ActiveRecord::Base
  def to_s
    self.name
  end

  def default!
    current_default_state = State.find_by_default(true)

    self.default = true
    self.save!

    if current_default_state
      current_defult_state.default = false
      current_defult_state.save!
    end
  end
end
