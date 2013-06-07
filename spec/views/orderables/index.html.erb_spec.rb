require 'spec_helper'

describe "orderables/index" do
  before(:each) do
    assign(:orderables, [
      stub_model(Orderable,
        :orig_orderable_id => 1,
        :partner_org_id => 2,
        :alias => 3,
        :display => "Display",
        :description => "Description",
        :active_ind => 4
      ),
      stub_model(Orderable,
        :orig_orderable_id => 1,
        :partner_org_id => 2,
        :alias => 3,
        :display => "Display",
        :description => "Description",
        :active_ind => 4
      )
    ])
  end

  it "renders a list of orderables" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
