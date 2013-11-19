require 'spec_helper'

describe "boarding_passes/show" do
  before(:each) do
    @boarding_pass = assign(:boarding_pass, stub_model(BoardingPass,
      :source => "Source",
      :destination => "Destination",
      :transportation => "Transportation",
      :seat => "Seat",
      :gate => "Gate",
      :counter => "Counter"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Source/)
    rendered.should match(/Destination/)
    rendered.should match(/Transportation/)
    rendered.should match(/Seat/)
    rendered.should match(/Gate/)
    rendered.should match(/Counter/)
  end
end
