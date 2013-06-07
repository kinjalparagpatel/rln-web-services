require 'spec_helper'

describe "orderable_specimen/show" do
  before(:each) do
    @orderable_speciman = assign(:orderable_speciman, stub_model(OrderableSpeciman,
      :orig_orderable_specimen_id => 1,
      :orderable_id => 2,
      :specimen_component_id => 3,
      :active_ind => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
