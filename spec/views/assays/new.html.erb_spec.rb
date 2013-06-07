require 'spec_helper'

describe "assays/new" do
  before(:each) do
    assign(:assay, stub_model(Assay,
      :orig_assay_id => 1,
      :partner_org_id => 1,
      :alias => 1,
      :display => "MyString",
      :description => "MyString",
      :active_ind => 1
    ).as_new_record)
  end

  it "renders new assay form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assays_path, :method => "post" do
      assert_select "input#assay_orig_assay_id", :name => "assay[orig_assay_id]"
      assert_select "input#assay_partner_org_id", :name => "assay[partner_org_id]"
      assert_select "input#assay_alias", :name => "assay[alias]"
      assert_select "input#assay_display", :name => "assay[display]"
      assert_select "input#assay_description", :name => "assay[description]"
      assert_select "input#assay_active_ind", :name => "assay[active_ind]"
    end
  end
end
