require 'spec_helper'

describe "organizations/show" do
  before(:each) do
    @organization = assign(:organization, stub_model(Organization,
      :orig_organization_id => 1,
      :org_type_cd => 2,
      :org_name => "Org Name",
      :org_email => "Org Email",
      :active_ind => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Org Name/)
    rendered.should match(/Org Email/)
    rendered.should match(/3/)
  end
end
