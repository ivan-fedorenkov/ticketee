require 'spec_helper'

describe User do
  describe "methods" do
    describe "reset_request_count" do
      it "resets user request count" do
        user = FactoryGirl.create(:user)
        user.update_attribute(:request_count, 200)
        User.reset_request_count!
        user.reload
        user.request_count.should eql(0)
      end
    end
  end
end
