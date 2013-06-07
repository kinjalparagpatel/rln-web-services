require "spec_helper"

describe TrackOrderChangesController do
  describe "routing" do

    it "routes to #index" do
      get("/track_order_changes").should route_to("track_order_changes#index")
    end

    it "routes to #new" do
      get("/track_order_changes/new").should route_to("track_order_changes#new")
    end

    it "routes to #show" do
      get("/track_order_changes/1").should route_to("track_order_changes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/track_order_changes/1/edit").should route_to("track_order_changes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/track_order_changes").should route_to("track_order_changes#create")
    end

    it "routes to #update" do
      put("/track_order_changes/1").should route_to("track_order_changes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/track_order_changes/1").should route_to("track_order_changes#destroy", :id => "1")
    end

  end
end
