require 'spec_helper'

describe "BoardingPasses" do
  describe "GET /boarding_passes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get boarding_passes_path
      response.status.should be(200)
    end
  end
end
