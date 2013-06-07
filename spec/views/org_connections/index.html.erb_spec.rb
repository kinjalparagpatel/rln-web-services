require 'spec_helper'

describe "org_connections/index" do
  before(:each) do
    assign(:org_connections, [
      stub_model(OrgConnection,
        :orig_org_connection_id => 1,
        :partner_org_id => 2,
        :client_org_id => 3,
        :active_ind => 4
      ),
      stub_model(OrgConnection,
        :orig_org_connection_id => 1,
        :partner_org_id => 2,
        :client_org_id => 3,
        :active_ind => 4
      )
    ])
  end

  it "renders a list of org_connections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
