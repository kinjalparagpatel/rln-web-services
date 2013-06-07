require 'spec_helper'

describe "orderable_specimen/new" do
  before(:each) do
    assign(:orderable_speciman, stub_model(OrderableSpeciman,
      :orig_orderable_specimen_id => 1,
      :orderable_id => 1,
      :specimen_component_id => 1,
      :active_ind => 1
    ).as_new_record)
  end

  it "renders new orderable_speciman form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orderable_specimen_path, :method => "post" do
      assert_select "input#orderable_speciman_orig_orderable_specimen_id", :name => "orderable_speciman[orig_orderable_specimen_id]"
      assert_select "input#orderable_speciman_orderable_id", :name => "orderable_speciman[orderable_id]"
      assert_select "input#orderable_speciman_specimen_component_id", :name => "orderable_speciman[specimen_component_id]"
      assert_select "input#orderable_speciman_active_ind", :name => "orderable_speciman[active_ind]"
    end
  end
end
