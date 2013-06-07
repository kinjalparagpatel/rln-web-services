require 'spec_helper'

describe "client_org_orderables/index" do
  before(:each) do
    assign(:client_org_orderables, [
      stub_model(ClientOrgOrderable,
        :orig_client_org_orderable_id => 1,
        :org_connection_id => 2,
        :client_facility_identifier => 3,
        :orderable_id => 4,
        :active_ind => 5
      ),
      stub_model(ClientOrgOrderable,
        :orig_client_org_orderable_id => 1,
        :org_connection_id => 2,
        :client_facility_identifier => 3,
        :orderable_id => 4,
        :active_ind => 5
      )
    ])
  end

  it "renders a list of client_org_orderables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
