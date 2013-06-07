require "spec_helper"

describe TrackAssayChangesController do
  describe "routing" do

    it "routes to #index" do
      get("/track_assay_changes").should route_to("track_assay_changes#index")
    end

    it "routes to #new" do
      get("/track_assay_changes/new").should route_to("track_assay_changes#new")
    end

    it "routes to #show" do
      get("/track_assay_changes/1").should route_to("track_assay_changes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/track_assay_changes/1/edit").should route_to("track_assay_changes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/track_assay_changes").should route_to("track_assay_changes#create")
    end

    it "routes to #update" do
      put("/track_assay_changes/1").should route_to("track_assay_changes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/track_assay_changes/1").should route_to("track_assay_changes#destroy", :id => "1")
    end

  end
end
