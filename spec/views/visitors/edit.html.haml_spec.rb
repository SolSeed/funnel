require 'spec_helper'

describe "visitors/edit" do
  before(:each) do
    @visitor = assign(:visitor, stub_model(Visitor))
  end

  it "renders the edit visitor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visitor_path(@visitor), "post" do
    end
  end
end
