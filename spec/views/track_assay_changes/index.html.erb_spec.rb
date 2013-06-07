require 'spec_helper'

describe "track_assay_changes/index" do
  before(:each) do
    assign(:track_assay_changes, [
      stub_model(TrackAssayChange,
        :orig_track_assay_change_id => 1,
        :client_org_id => 2,
        :client_facility_identifier => 3,
        :assay_id => 4,
        :change_type_cd => 5,
        :active_ind => 6
      ),
      stub_model(TrackAssayChange,
        :orig_track_assay_change_id => 1,
        :client_org_id => 2,
        :client_facility_identifier => 3,
        :assay_id => 4,
        :change_type_cd => 5,
        :active_ind => 6
      )
    ])
  end

  it "renders a list of track_assay_changes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
