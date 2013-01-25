require "spec_helper"

describe PuffsController do
  describe "routing" do

    it "routes to #index" do
      get("/puffs").should route_to("puffs#index")
    end

    it "routes to #new" do
      get("/puffs/new").should route_to("puffs#new")
    end

    it "routes to #show" do
      get("/puffs/1").should route_to("puffs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/puffs/1/edit").should route_to("puffs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/puffs").should route_to("puffs#create")
    end

    it "routes to #update" do
      put("/puffs/1").should route_to("puffs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/puffs/1").should route_to("puffs#destroy", :id => "1")
    end

  end
end
