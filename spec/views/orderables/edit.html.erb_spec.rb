require 'spec_helper'

describe "orderables/edit" do
  before(:each) do
    @orderable = assign(:orderable, stub_model(Orderable,
      :orig_orderable_id => 1,
      :partner_org_id => 1,
      :alias => 1,
      :display => "MyString",
      :description => "MyString",
      :active_ind => 1
    ))
  end

  it "renders the edit orderable form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orderables_path(@orderable), :method => "post" do
      assert_select "input#orderable_orig_orderable_id", :name => "orderable[orig_orderable_id]"
      assert_select "input#orderable_partner_org_id", :name => "orderable[partner_org_id]"
      assert_select "input#orderable_alias", :name => "orderable[alias]"
      assert_select "input#orderable_display", :name => "orderable[display]"
      assert_select "input#orderable_description", :name => "orderable[description]"
      assert_select "input#orderable_active_ind", :name => "orderable[active_ind]"
    end
  end
end
