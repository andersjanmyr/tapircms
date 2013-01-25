require "spec_helper"

describe PageEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/page_entries").should route_to("page_entries#index")
    end

    it "routes to #new" do
      get("/page_entries/new").should route_to("page_entries#new")
    end

    it "routes to #show" do
      get("/page_entries/1").should route_to("page_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/page_entries/1/edit").should route_to("page_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/page_entries").should route_to("page_entries#create")
    end

    it "routes to #update" do
      put("/page_entries/1").should route_to("page_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/page_entries/1").should route_to("page_entries#destroy", :id => "1")
    end

  end
end
