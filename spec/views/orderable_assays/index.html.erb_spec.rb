require 'spec_helper'

describe "orderable_assays/index" do
  before(:each) do
    assign(:orderable_assays, [
      stub_model(OrderableAssay,
        :orig_orderable_assay_id => 1,
        :partner_org_id => 2,
        :orderable_id => 3,
        :assay_id => 4,
        :active_ind => 5
      ),
      stub_model(OrderableAssay,
        :orig_orderable_assay_id => 1,
        :partner_org_id => 2,
        :orderable_id => 3,
        :assay_id => 4,
        :active_ind => 5
      )
    ])
  end

  it "renders a list of orderable_assays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
