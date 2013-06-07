require 'spec_helper'

describe "coll_requirements/edit" do
  before(:each) do
    @coll_requirement = assign(:coll_requirement, stub_model(CollRequirement,
      :orig_coll_requirements_id => 1,
      :orderable_specimen_id => 1,
      :container_component_id => 1,
      :collection_method_component_id => 1,
      :transport_temp_component_id => 1,
      :unit_of_measure_component_id => 1,
      :minimum_volume => 1,
      :active_ind => 1
    ))
  end

  it "renders the edit coll_requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => coll_requirements_path(@coll_requirement), :method => "post" do
      assert_select "input#coll_requirement_orig_coll_requirements_id", :name => "coll_requirement[orig_coll_requirements_id]"
      assert_select "input#coll_requirement_orderable_specimen_id", :name => "coll_requirement[orderable_specimen_id]"
      assert_select "input#coll_requirement_container_component_id", :name => "coll_requirement[container_component_id]"
      assert_select "input#coll_requirement_collection_method_component_id", :name => "coll_requirement[collection_method_component_id]"
      assert_select "input#coll_requirement_transport_temp_component_id", :name => "coll_requirement[transport_temp_component_id]"
      assert_select "input#coll_requirement_unit_of_measure_component_id", :name => "coll_requirement[unit_of_measure_component_id]"
      assert_select "input#coll_requirement_minimum_volume", :name => "coll_requirement[minimum_volume]"
      assert_select "input#coll_requirement_active_ind", :name => "coll_requirement[active_ind]"
    end
  end
end
