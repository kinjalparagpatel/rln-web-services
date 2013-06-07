require 'spec_helper'

describe "track_order_changes/new" do
  before(:each) do
    assign(:track_order_change, stub_model(TrackOrderChange,
      :orig_track_order_change_id => 1,
      :client_org_id => 1,
      :client_facility_identifier => 1,
      :orderable_id => 1,
      :change_type_cd => 1,
      :active_ind => 1
    ).as_new_record)
  end

  it "renders new track_order_change form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => track_order_changes_path, :method => "post" do
      assert_select "input#track_order_change_orig_track_order_change_id", :name => "track_order_change[orig_track_order_change_id]"
      assert_select "input#track_order_change_client_org_id", :name => "track_order_change[client_org_id]"
      assert_select "input#track_order_change_client_facility_identifier", :name => "track_order_change[client_facility_identifier]"
      assert_select "input#track_order_change_orderable_id", :name => "track_order_change[orderable_id]"
      assert_select "input#track_order_change_change_type_cd", :name => "track_order_change[change_type_cd]"
      assert_select "input#track_order_change_active_ind", :name => "track_order_change[active_ind]"
    end
  end
end
