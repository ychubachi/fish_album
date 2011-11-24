require "spec_helper"

describe FishController do
  describe "routing" do

    it "routes to #index" do
      get("/fish").should route_to("fish#index")
    end

    it "routes to #new" do
      get("/fish/new").should route_to("fish#new")
    end

    it "routes to #show" do
      get("/fish/1").should route_to("fish#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fish/1/edit").should route_to("fish#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fish").should route_to("fish#create")
    end

    it "routes to #update" do
      put("/fish/1").should route_to("fish#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fish/1").should route_to("fish#destroy", :id => "1")
    end

  end
end
