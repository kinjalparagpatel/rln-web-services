require 'spec_helper'

describe "OrgConnections" do
  describe "GET /org_connections" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get org_connections_path
      response.status.should be(200)
    end
  end
end
