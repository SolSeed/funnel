require 'spec_helper'

describe "visitors/index" do
  before(:each) do
    assign(:visitors, [
      stub_model(Visitor),
      stub_model(Visitor)
    ])
  end

  it "renders a list of visitors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
