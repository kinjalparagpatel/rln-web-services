require 'spec_helper'

describe "client_org_orderables/edit" do
  before(:each) do
    @client_org_orderable = assign(:client_org_orderable, stub_model(ClientOrgOrderable,
      :orig_client_org_orderable_id => 1,
      :org_connection_id => 1,
      :client_facility_identifier => 1,
      :orderable_id => 1,
      :active_ind => 1
    ))
  end

  it "renders the edit client_org_orderable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => client_org_orderables_path(@client_org_orderable), :method => "post" do
      assert_select "input#client_org_orderable_orig_client_org_orderable_id", :name => "client_org_orderable[orig_client_org_orderable_id]"
      assert_select "input#client_org_orderable_org_connection_id", :name => "client_org_orderable[org_connection_id]"
      assert_select "input#client_org_orderable_client_facility_identifier", :name => "client_org_orderable[client_facility_identifier]"
      assert_select "input#client_org_orderable_orderable_id", :name => "client_org_orderable[orderable_id]"
      assert_select "input#client_org_orderable_active_ind", :name => "client_org_orderable[active_ind]"
    end
  end
end
