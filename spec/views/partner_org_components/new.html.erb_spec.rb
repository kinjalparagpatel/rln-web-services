require 'spec_helper'

describe "partner_org_components/new" do
  before(:each) do
    assign(:partner_org_component, stub_model(PartnerOrgComponent,
      :orig_partner_org_component_id => 1,
      :partner_org_id => 1,
      :component_type_cd => 1,
      :display => "MyString",
      :description => "MyString",
      :standard_component_id => 1,
      :active_ind => 1
    ).as_new_record)
  end

  it "renders new partner_org_component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => partner_org_components_path, :method => "post" do
      assert_select "input#partner_org_component_orig_partner_org_component_id", :name => "partner_org_component[orig_partner_org_component_id]"
      assert_select "input#partner_org_component_partner_org_id", :name => "partner_org_component[partner_org_id]"
      assert_select "input#partner_org_component_component_type_cd", :name => "partner_org_component[component_type_cd]"
      assert_select "input#partner_org_component_display", :name => "partner_org_component[display]"
      assert_select "input#partner_org_component_description", :name => "partner_org_component[description]"
      assert_select "input#partner_org_component_standard_component_id", :name => "partner_org_component[standard_component_id]"
      assert_select "input#partner_org_component_active_ind", :name => "partner_org_component[active_ind]"
    end
  end
end
