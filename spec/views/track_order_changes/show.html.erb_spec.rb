require 'spec_helper'

describe "track_order_changes/show" do
  before(:each) do
    @track_order_change = assign(:track_order_change, stub_model(TrackOrderChange,
      :orig_track_order_change_id => 1,
      :client_org_id => 2,
      :client_facility_identifier => 3,
      :orderable_id => 4,
      :change_type_cd => 5,
      :active_ind => 6
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
    rendered.should match(/6/)
  end
end
