require 'spec_helper'

describe "visitors/new" do
  before(:each) do
    assign(:visitor, stub_model(Visitor).as_new_record)
  end

  it "renders new visitor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", visitors_path, "post" do
    end
  end
end
