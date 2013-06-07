require 'spec_helper'

describe "organizations/new" do
  before(:each) do
    assign(:organization, stub_model(Organization,
      :orig_organization_id => 1,
      :org_type_cd => 1,
      :org_name => "MyString",
      :org_email => "MyString",
      :active_ind => 1
    ).as_new_record)
  end

  it "renders new organization form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => organizations_path, :method => "post" do
      assert_select "input#organization_orig_organization_id", :name => "organization[orig_organization_id]"
      assert_select "input#organization_org_type_cd", :name => "organization[org_type_cd]"
      assert_select "input#organization_org_name", :name => "organization[org_name]"
      assert_select "input#organization_org_email", :name => "organization[org_email]"
      assert_select "input#organization_active_ind", :name => "organization[active_ind]"
    end
  end
end
