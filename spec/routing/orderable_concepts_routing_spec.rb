require "spec_helper"

describe OrderableConceptsController do
  describe "routing" do

    it "routes to #index" do
      get("/orderable_concepts").should route_to("orderable_concepts#index")
    end

    it "routes to #new" do
      get("/orderable_concepts/new").should route_to("orderable_concepts#new")
    end

    it "routes to #show" do
      get("/orderable_concepts/1").should route_to("orderable_concepts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orderable_concepts/1/edit").should route_to("orderable_concepts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orderable_concepts").should route_to("orderable_concepts#create")
    end

    it "routes to #update" do
      put("/orderable_concepts/1").should route_to("orderable_concepts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orderable_concepts/1").should route_to("orderable_concepts#destroy", :id => "1")
    end

  end
end
