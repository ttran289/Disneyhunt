require 'spec_helper'

describe BadgesController do

  describe "GET 'name'" do
    it "returns http success" do
      get 'name'
      response.should be_success
    end
  end

end
