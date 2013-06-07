require "spec_helper"

describe CollRequirementsController do
  describe "routing" do

    it "routes to #index" do
      get("/coll_requirements").should route_to("coll_requirements#index")
    end

    it "routes to #new" do
      get("/coll_requirements/new").should route_to("coll_requirements#new")
    end

    it "routes to #show" do
      get("/coll_requirements/1").should route_to("coll_requirements#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coll_requirements/1/edit").should route_to("coll_requirements#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coll_requirements").should route_to("coll_requirements#create")
    end

    it "routes to #update" do
      put("/coll_requirements/1").should route_to("coll_requirements#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coll_requirements/1").should route_to("coll_requirements#destroy", :id => "1")
    end

  end
end
