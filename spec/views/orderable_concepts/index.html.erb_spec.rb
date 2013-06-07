require 'spec_helper'

describe "orderable_concepts/index" do
  before(:each) do
    assign(:orderable_concepts, [
      stub_model(OrderableConcept,
        :orig_orderable_concept_id => 1,
        :orderable_id => 2,
        :coding_system => "Coding System",
        :code => 3,
        :active_ind => 4
      ),
      stub_model(OrderableConcept,
        :orig_orderable_concept_id => 1,
        :orderable_id => 2,
        :coding_system => "Coding System",
        :code => 3,
        :active_ind => 4
      )
    ])
  end

  it "renders a list of orderable_concepts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Coding System".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
