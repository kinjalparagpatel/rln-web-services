require 'spec_helper'

describe "coll_requirements/show" do
  before(:each) do
    @coll_requirement = assign(:coll_requirement, stub_model(CollRequirement,
      :orig_coll_requirements_id => 1,
      :orderable_specimen_id => 2,
      :container_component_id => 3,
      :collection_method_component_id => 4,
      :transport_temp_component_id => 5,
      :unit_of_measure_component_id => 6,
      :minimum_volume => 7,
      :active_ind => 8
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
    rendered.should match(/7/)
    rendered.should match(/8/)
  end
end
