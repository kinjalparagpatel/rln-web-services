require 'spec_helper'

describe "standard_components/show" do
  before(:each) do
    @standard_component = assign(:standard_component, stub_model(StandardComponent,
      :orig_standard_component_id => 1,
      :component_type_cd => 2,
      :display => "Display",
      :description => "Description",
      :active_ind => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Display/)
    rendered.should match(/Description/)
    rendered.should match(/3/)
  end
end
