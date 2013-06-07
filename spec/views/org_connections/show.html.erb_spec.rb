require 'spec_helper'

describe "org_connections/show" do
  before(:each) do
    @org_connection = assign(:org_connection, stub_model(OrgConnection,
      :orig_org_connection_id => 1,
      :partner_org_id => 2,
      :client_org_id => 3,
      :active_ind => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
