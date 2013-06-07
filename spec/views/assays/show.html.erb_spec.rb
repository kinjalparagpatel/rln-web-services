require 'spec_helper'

describe "assays/show" do
  before(:each) do
    @assay = assign(:assay, stub_model(Assay,
      :orig_assay_id => 1,
      :partner_org_id => 2,
      :alias => 3,
      :display => "Display",
      :description => "Description",
      :active_ind => 4
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
  end
end
