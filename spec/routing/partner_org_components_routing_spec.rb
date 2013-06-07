require "spec_helper"

describe PartnerOrgComponentsController do
  describe "routing" do

    it "routes to #index" do
      get("/partner_org_components").should route_to("partner_org_components#index")
    end

    it "routes to #new" do
      get("/partner_org_components/new").should route_to("partner_org_components#new")
    end

    it "routes to #show" do
      get("/partner_org_components/1").should route_to("partner_org_components#show", :id => "1")
    end

    it "routes to #edit" do
      get("/partner_org_components/1/edit").should route_to("partner_org_components#edit", :id => "1")
    end

    it "routes to #create" do
      post("/partner_org_components").should route_to("partner_org_components#create")
    end

    it "routes to #update" do
      put("/partner_org_components/1").should route_to("partner_org_components#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/partner_org_components/1").should route_to("partner_org_components#destroy", :id => "1")
    end

  end
end
