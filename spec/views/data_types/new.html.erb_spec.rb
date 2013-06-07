require 'spec_helper'

describe "data_types/new" do
  before(:each) do
    assign(:data_type, stub_model(DataType,
      :code => 1,
      :display => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new data_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => data_types_path, :method => "post" do
      assert_select "input#data_type_code", :name => "data_type[code]"
      assert_select "input#data_type_display", :name => "data_type[display]"
      assert_select "input#data_type_description", :name => "data_type[description]"
    end
  end
end
