require 'spec_helper'

describe "orderable_specimen/index" do
  before(:each) do
    assign(:orderable_specimen, [
      stub_model(OrderableSpeciman,
        :orig_orderable_specimen_id => 1,
        :orderable_id => 2,
        :specimen_component_id => 3,
        :active_ind => 4
      ),
      stub_model(OrderableSpeciman,
        :orig_orderable_specimen_id => 1,
        :orderable_id => 2,
        :specimen_component_id => 3,
        :active_ind => 4
      )
    ])
  end

  it "renders a list of orderable_specimen" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
