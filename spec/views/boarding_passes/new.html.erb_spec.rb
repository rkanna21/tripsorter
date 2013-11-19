require 'spec_helper'

describe "boarding_passes/new" do
  before(:each) do
    assign(:boarding_pass, stub_model(BoardingPass,
      :source => "MyString",
      :destination => "MyString",
      :transportation => "MyString",
      :seat => "MyString",
      :gate => "MyString",
      :counter => "MyString"
    ).as_new_record)
  end

  it "renders new boarding_pass form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", boarding_passes_path, "post" do
      assert_select "input#boarding_pass_source[name=?]", "boarding_pass[source]"
      assert_select "input#boarding_pass_destination[name=?]", "boarding_pass[destination]"
      assert_select "input#boarding_pass_transportation[name=?]", "boarding_pass[transportation]"
      assert_select "input#boarding_pass_seat[name=?]", "boarding_pass[seat]"
      assert_select "input#boarding_pass_gate[name=?]", "boarding_pass[gate]"
      assert_select "input#boarding_pass_counter[name=?]", "boarding_pass[counter]"
    end
  end
end
