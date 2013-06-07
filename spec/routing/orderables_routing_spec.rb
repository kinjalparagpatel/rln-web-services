require "spec_helper"

describe OrderablesController do
  describe "routing" do

    it "routes to #index" do
      get("/orderables").should route_to("orderables#index")
    end

    it "routes to #new" do
      get("/orderables/new").should route_to("orderables#new")
    end

    it "routes to #show" do
      get("/orderables/1").should route_to("orderables#show", :id => "1")
    end

    it "routes to #edit" do
      get("/orderables/1/edit").should route_to("orderables#edit", :id => "1")
    end

    it "routes to #create" do
      post("/orderables").should route_to("orderables#create")
    end

    it "routes to #update" do
      put("/orderables/1").should route_to("orderables#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/orderables/1").should route_to("orderables#destroy", :id => "1")
    end

  end
end
