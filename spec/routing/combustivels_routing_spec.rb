require "spec_helper"

describe CombustivelsController do
  describe "routing" do

    it "routes to #index" do
      get("/combustivels").should route_to("combustivels#index")
    end

    it "routes to #new" do
      get("/combustivels/new").should route_to("combustivels#new")
    end

    it "routes to #show" do
      get("/combustivels/1").should route_to("combustivels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/combustivels/1/edit").should route_to("combustivels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/combustivels").should route_to("combustivels#create")
    end

    it "routes to #update" do
      put("/combustivels/1").should route_to("combustivels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/combustivels/1").should route_to("combustivels#destroy", :id => "1")
    end

  end
end
