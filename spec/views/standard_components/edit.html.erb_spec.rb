require 'spec_helper'

describe "standard_components/edit" do
  before(:each) do
    @standard_component = assign(:standard_component, stub_model(StandardComponent,
      :orig_standard_component_id => 1,
      :component_type_cd => 1,
      :display => "MyString",
      :description => "MyString",
      :active_ind => 1
    ))
  end

  it "renders the edit standard_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => standard_components_path(@standard_component), :method => "post" do
      assert_select "input#standard_component_orig_standard_component_id", :name => "standard_component[orig_standard_component_id]"
      assert_select "input#standard_component_component_type_cd", :name => "standard_component[component_type_cd]"
      assert_select "input#standard_component_display", :name => "standard_component[display]"
      assert_select "input#standard_component_description", :name => "standard_component[description]"
      assert_select "input#standard_component_active_ind", :name => "standard_component[active_ind]"
    end
  end
end
