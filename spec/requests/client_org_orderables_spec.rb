require 'spec_helper'

describe "ClientOrgOrderables" do
  describe "GET /client_org_orderables" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get client_org_orderables_path
      response.status.should be(200)
    end
  end
end
