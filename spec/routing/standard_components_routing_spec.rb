require "spec_helper"

describe StandardComponentsController do
  describe "routing" do

    it "routes to #index" do
      get("/standard_components").should route_to("standard_components#index")
    end

    it "routes to #new" do
      get("/standard_components/new").should route_to("standard_components#new")
    end

    it "routes to #show" do
      get("/standard_components/1").should route_to("standard_components#show", :id => "1")
    end

    it "routes to #edit" do
      get("/standard_components/1/edit").should route_to("standard_components#edit", :id => "1")
    end

    it "routes to #create" do
      post("/standard_components").should route_to("standard_components#create")
    end

    it "routes to #update" do
      put("/standard_components/1").should route_to("standard_components#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/standard_components/1").should route_to("standard_components#destroy", :id => "1")
    end

  end
end
