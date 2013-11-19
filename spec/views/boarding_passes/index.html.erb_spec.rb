require 'spec_helper'

describe "boarding_passes/index" do
  before(:each) do
    assign(:boarding_passes, [
      stub_model(BoardingPass,
        :source => "Source",
        :destination => "Destination",
        :transportation => "Transportation",
        :seat => "Seat",
        :gate => "Gate",
        :counter => "Counter"
      ),
      stub_model(BoardingPass,
        :source => "Source",
        :destination => "Destination",
        :transportation => "Transportation",
        :seat => "Seat",
        :gate => "Gate",
        :counter => "Counter"
      )
    ])
  end

  it "renders a list of boarding_passes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Source".to_s, :count => 2
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "Transportation".to_s, :count => 2
    assert_select "tr>td", :text => "Seat".to_s, :count => 2
    assert_select "tr>td", :text => "Gate".to_s, :count => 2
    assert_select "tr>td", :text => "Counter".to_s, :count => 2
  end
end
