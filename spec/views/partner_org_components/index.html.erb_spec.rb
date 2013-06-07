require 'spec_helper'

describe "partner_org_components/index" do
  before(:each) do
    assign(:partner_org_components, [
      stub_model(PartnerOrgComponent,
        :orig_partner_org_component_id => 1,
        :partner_org_id => 2,
        :component_type_cd => 3,
        :display => "Display",
        :description => "Description",
        :standard_component_id => 4,
        :active_ind => 5
      ),
      stub_model(PartnerOrgComponent,
        :orig_partner_org_component_id => 1,
        :partner_org_id => 2,
        :component_type_cd => 3,
        :display => "Display",
        :description => "Description",
        :standard_component_id => 4,
        :active_ind => 5
      )
    ])
  end

  it "renders a list of partner_org_components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
