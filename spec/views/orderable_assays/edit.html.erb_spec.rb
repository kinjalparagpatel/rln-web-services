require 'spec_helper'

describe "orderable_assays/edit" do
  before(:each) do
    @orderable_assay = assign(:orderable_assay, stub_model(OrderableAssay,
      :orig_orderable_assay_id => 1,
      :partner_org_id => 1,
      :orderable_id => 1,
      :assay_id => 1,
      :active_ind => 1
    ))
  end

  it "renders the edit orderable_assay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orderable_assays_path(@orderable_assay), :method => "post" do
      assert_select "input#orderable_assay_orig_orderable_assay_id", :name => "orderable_assay[orig_orderable_assay_id]"
      assert_select "input#orderable_assay_partner_org_id", :name => "orderable_assay[partner_org_id]"
      assert_select "input#orderable_assay_orderable_id", :name => "orderable_assay[orderable_id]"
      assert_select "input#orderable_assay_assay_id", :name => "orderable_assay[assay_id]"
      assert_select "input#orderable_assay_active_ind", :name => "orderable_assay[active_ind]"
    end
  end
end
