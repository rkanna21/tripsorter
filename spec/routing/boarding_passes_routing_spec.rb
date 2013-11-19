require "spec_helper"

describe BoardingPassesController do
  describe "routing" do

    it "routes to #index" do
      get("/boarding_passes").should route_to("boarding_passes#index")
    end

    it "routes to #new" do
      get("/boarding_passes/new").should route_to("boarding_passes#new")
    end

    it "routes to #show" do
      get("/boarding_passes/1").should route_to("boarding_passes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/boarding_passes/1/edit").should route_to("boarding_passes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/boarding_passes").should route_to("boarding_passes#create")
    end

    it "routes to #update" do
      put("/boarding_passes/1").should route_to("boarding_passes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/boarding_passes/1").should route_to("boarding_passes#destroy", :id => "1")
    end

  end
end
