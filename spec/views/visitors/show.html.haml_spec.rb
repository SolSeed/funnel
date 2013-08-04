require 'spec_helper'

describe "visitors/show" do
  before(:each) do
    @visitor = assign(:visitor, stub_model(Visitor))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
