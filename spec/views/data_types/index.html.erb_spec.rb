require 'spec_helper'

describe "data_types/index" do
  before(:each) do
    assign(:data_types, [
      stub_model(DataType,
        :code => 1,
        :display => "Display",
        :description => "Description"
      ),
      stub_model(DataType,
        :code => 1,
        :display => "Display",
        :description => "Description"
      )
    ])
  end

  it "renders a list of data_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
