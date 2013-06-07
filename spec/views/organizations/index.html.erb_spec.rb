require 'spec_helper'

describe "organizations/index" do
  before(:each) do
    assign(:organizations, [
      stub_model(Organization,
        :orig_organization_id => 1,
        :org_type_cd => 2,
        :org_name => "Org Name",
        :org_email => "Org Email",
        :active_ind => 3
      ),
      stub_model(Organization,
        :orig_organization_id => 1,
        :org_type_cd => 2,
        :org_name => "Org Name",
        :org_email => "Org Email",
        :active_ind => 3
      )
    ])
  end

  it "renders a list of organizations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Org Name".to_s, :count => 2
    assert_select "tr>td", :text => "Org Email".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
