require 'spec_helper'

describe "API errors", :type => :api do
  describe "making a request with no token" do
    it "should return an error object as a response" do
      get "/api/v1/projects.json", :token => ""
      error = { :error => "Token is invalid." }
      last_response.body.should eql(error.to_json)
    end
  end  
end