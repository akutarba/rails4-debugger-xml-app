require 'spec_helper'

describe "managers/show" do
  before(:each) do
    @manager = assign(:manager, stub_model(Manager,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
