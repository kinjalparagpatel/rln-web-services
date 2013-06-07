require "spec_helper"

describe OrderableSpecimenController do
  describe "routing" do

    it "routes to #index" do
      get("/orderable_specimen").should route_to("orderable_specimen#index")
    end

    it "routes to #new" do
      get("/orderable_specimen/new").should route_to("orderable_specimen#new")
    end

    it "routes to #show" do
      get("/orderable_specimen/1").should route_to("orderable_specimen#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orderable_specimen/1/edit").should route_to("orderable_specimen#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orderable_specimen").should route_to("orderable_specimen#create")
    end

    it "routes to #update" do
      put("/orderable_specimen/1").should route_to("orderable_specimen#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orderable_specimen/1").should route_to("orderable_specimen#destroy", :id => "1")
    end

  end
end
