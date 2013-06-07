require 'spec_helper'

describe "org_connections/new" do
  before(:each) do
    assign(:org_connection, stub_model(OrgConnection,
      :orig_org_connection_id => 1,
      :partner_org_id => 1,
      :client_org_id => 1,
      :active_ind => 1
    ).as_new_record)
  end

  it "renders new org_connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => org_connections_path, :method => "post" do
      assert_select "input#org_connection_orig_org_connection_id", :name => "org_connection[orig_org_connection_id]"
      assert_select "input#org_connection_partner_org_id", :name => "org_connection[partner_org_id]"
      assert_select "input#org_connection_client_org_id", :name => "org_connection[client_org_id]"
      assert_select "input#org_connection_active_ind", :name => "org_connection[active_ind]"
    end
  end
end
