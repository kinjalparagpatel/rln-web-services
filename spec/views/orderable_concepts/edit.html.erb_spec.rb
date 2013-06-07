require 'spec_helper'

describe "orderable_concepts/edit" do
  before(:each) do
    @orderable_concept = assign(:orderable_concept, stub_model(OrderableConcept,
      :orig_orderable_concept_id => 1,
      :orderable_id => 1,
      :coding_system => "MyString",
      :code => 1,
      :active_ind => 1
    ))
  end

  it "renders the edit orderable_concept form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orderable_concepts_path(@orderable_concept), :method => "post" do
      assert_select "input#orderable_concept_orig_orderable_concept_id", :name => "orderable_concept[orig_orderable_concept_id]"
      assert_select "input#orderable_concept_orderable_id", :name => "orderable_concept[orderable_id]"
      assert_select "input#orderable_concept_coding_system", :name => "orderable_concept[coding_system]"
      assert_select "input#orderable_concept_code", :name => "orderable_concept[code]"
      assert_select "input#orderable_concept_active_ind", :name => "orderable_concept[active_ind]"
    end
  end
end
