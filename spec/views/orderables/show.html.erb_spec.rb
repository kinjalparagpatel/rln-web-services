require 'spec_helper'

describe "orderables/show" do
  before(:each) do
    @orderable = assign(:orderable, stub_model(Orderable,
      :orig_orderable_id => 1,
      :partner_org_id => 2,
      :alias => 3,
      :display => "Display",
      :description => "Description",
      :active_ind => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Display/)
    rendered.should match(/Description/)
    rendered.should match(/4/)
  end
end
