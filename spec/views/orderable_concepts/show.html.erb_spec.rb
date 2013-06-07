require 'spec_helper'

describe "orderable_concepts/show" do
  before(:each) do
    @orderable_concept = assign(:orderable_concept, stub_model(OrderableConcept,
      :orig_orderable_concept_id => 1,
      :orderable_id => 2,
      :coding_system => "Coding System",
      :code => 3,
      :active_ind => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Coding System/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
