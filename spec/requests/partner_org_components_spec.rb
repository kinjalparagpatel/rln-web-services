require 'spec_helper'

describe "PartnerOrgComponents" do
  describe "GET /partner_org_components" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get partner_org_components_path
      response.status.should be(200)
    end
  end
end
