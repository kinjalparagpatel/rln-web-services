require "spec_helper"

describe OrgConnectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/org_connections").should route_to("org_connections#index")
    end

    it "routes to #new" do
      get("/org_connections/new").should route_to("org_connections#new")
    end

    it "routes to #show" do
      get("/org_connections/1").should route_to("org_connections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/org_connections/1/edit").should route_to("org_connections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/org_connections").should route_to("org_connections#create")
    end

    it "routes to #update" do
      put("/org_connections/1").should route_to("org_connections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/org_connections/1").should route_to("org_connections#destroy", :id => "1")
    end

  end
end
