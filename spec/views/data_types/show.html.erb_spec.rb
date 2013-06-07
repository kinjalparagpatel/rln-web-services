require 'spec_helper'

describe "data_types/show" do
  before(:each) do
    @data_type = assign(:data_type, stub_model(DataType,
      :code => 1,
      :display => "Display",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Display/)
    rendered.should match(/Description/)
  end
end
