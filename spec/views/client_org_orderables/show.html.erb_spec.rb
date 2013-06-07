require 'spec_helper'

describe "client_org_orderables/show" do
  before(:each) do
    @client_org_orderable = assign(:client_org_orderable, stub_model(ClientOrgOrderable,
      :orig_client_org_orderable_id => 1,
      :org_connection_id => 2,
      :client_facility_identifier => 3,
      :orderable_id => 4,
      :active_ind => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
