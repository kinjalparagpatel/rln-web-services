require "spec_helper"

describe ClientOrgOrderablesController do
  describe "routing" do

    it "routes to #index" do
      get("/client_org_orderables").should route_to("client_org_orderables#index")
    end

    it "routes to #new" do
      get("/client_org_orderables/new").should route_to("client_org_orderables#new")
    end

    it "routes to #show" do
      get("/client_org_orderables/1").should route_to("client_org_orderables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/client_org_orderables/1/edit").should route_to("client_org_orderables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/client_org_orderables").should route_to("client_org_orderables#create")
    end

    it "routes to #update" do
      put("/client_org_orderables/1").should route_to("client_org_orderables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/client_org_orderables/1").should route_to("client_org_orderables#destroy", :id => "1")
    end

  end
end
