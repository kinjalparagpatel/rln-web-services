require 'spec_helper'

describe "track_assay_changes/edit" do
  before(:each) do
    @track_assay_change = assign(:track_assay_change, stub_model(TrackAssayChange,
      :orig_track_assay_change_id => 1,
      :client_org_id => 1,
      :client_facility_identifier => 1,
      :assay_id => 1,
      :change_type_cd => 1,
      :active_ind => 1
    ))
  end

  it "renders the edit track_assay_change form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => track_assay_changes_path(@track_assay_change), :method => "post" do
      assert_select "input#track_assay_change_orig_track_assay_change_id", :name => "track_assay_change[orig_track_assay_change_id]"
      assert_select "input#track_assay_change_client_org_id", :name => "track_assay_change[client_org_id]"
      assert_select "input#track_assay_change_client_facility_identifier", :name => "track_assay_change[client_facility_identifier]"
      assert_select "input#track_assay_change_assay_id", :name => "track_assay_change[assay_id]"
      assert_select "input#track_assay_change_change_type_cd", :name => "track_assay_change[change_type_cd]"
      assert_select "input#track_assay_change_active_ind", :name => "track_assay_change[active_ind]"
    end
  end
end
