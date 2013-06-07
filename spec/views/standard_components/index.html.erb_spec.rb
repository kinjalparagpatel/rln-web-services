require 'spec_helper'

describe "standard_components/index" do
  before(:each) do
    assign(:standard_components, [
      stub_model(StandardComponent,
        :orig_standard_component_id => 1,
        :component_type_cd => 2,
        :display => "Display",
        :description => "Description",
        :active_ind => 3
      ),
      stub_model(StandardComponent,
        :orig_standard_component_id => 1,
        :component_type_cd => 2,
        :display => "Display",
        :description => "Description",
        :active_ind => 3
      )
    ])
  end

  it "renders a list of standard_components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
