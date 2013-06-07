require 'spec_helper'

describe "coll_requirements/index" do
  before(:each) do
    assign(:coll_requirements, [
      stub_model(CollRequirement,
        :orig_coll_requirements_id => 1,
        :orderable_specimen_id => 2,
        :container_component_id => 3,
        :collection_method_component_id => 4,
        :transport_temp_component_id => 5,
        :unit_of_measure_component_id => 6,
        :minimum_volume => 7,
        :active_ind => 8
      ),
      stub_model(CollRequirement,
        :orig_coll_requirements_id => 1,
        :orderable_specimen_id => 2,
        :container_component_id => 3,
        :collection_method_component_id => 4,
        :transport_temp_component_id => 5,
        :unit_of_measure_component_id => 6,
        :minimum_volume => 7,
        :active_ind => 8
      )
    ])
  end

  it "renders a list of coll_requirements" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
  end
end
