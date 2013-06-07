require "spec_helper"

describe OrderableAssaysController do
  describe "routing" do

    it "routes to #index" do
      get("/orderable_assays").should route_to("orderable_assays#index")
    end

    it "routes to #new" do
      get("/orderable_assays/new").should route_to("orderable_assays#new")
    end

    it "routes to #show" do
      get("/orderable_assays/1").should route_to("orderable_assays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orderable_assays/1/edit").should route_to("orderable_assays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orderable_assays").should route_to("orderable_assays#create")
    end

    it "routes to #update" do
      put("/orderable_assays/1").should route_to("orderable_assays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orderable_assays/1").should route_to("orderable_assays#destroy", :id => "1")
    end

  end
end
