require 'spec_helper'

describe "organizations/edit" do
  before(:each) do
    @organization = assign(:organization, stub_model(Organization,
      :orig_organization_id => 1,
      :org_type_cd => 1,
      :org_name => "MyString",
      :org_email => "MyString",
      :active_ind => 1
    ))
  end

  it "renders the edit organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizations_path(@organization), :method => "post" do
      assert_select "input#organization_orig_organization_id", :name => "organization[orig_organization_id]"
      assert_select "input#organization_org_type_cd", :name => "organization[org_type_cd]"
      assert_select "input#organization_org_name", :name => "organization[org_name]"
      assert_select "input#organization_org_email", :name => "organization[org_email]"
      assert_select "input#organization_active_ind", :name => "organization[active_ind]"
    end
  end
end
