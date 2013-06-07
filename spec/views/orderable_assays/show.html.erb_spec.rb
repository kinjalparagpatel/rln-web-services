require 'spec_helper'

describe "orderable_assays/show" do
  before(:each) do
    @orderable_assay = assign(:orderable_assay, stub_model(OrderableAssay,
      :orig_orderable_assay_id => 1,
      :partner_org_id => 2,
      :orderable_id => 3,
      :assay_id => 4,
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
