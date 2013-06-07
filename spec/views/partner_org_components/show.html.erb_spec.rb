require 'spec_helper'

describe "partner_org_components/show" do
  before(:each) do
    @partner_org_component = assign(:partner_org_component, stub_model(PartnerOrgComponent,
      :orig_partner_org_component_id => 1,
      :partner_org_id => 2,
      :component_type_cd => 3,
      :display => "Display",
      :description => "Description",
      :standard_component_id => 4,
      :active_ind => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Display/)
    rendered.should match(/Description/)
    rendered.should match(/4/)
    rendered.should match(/5/)
  end
end
