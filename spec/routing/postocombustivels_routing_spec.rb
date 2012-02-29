require "spec_helper"

describe PostocombustivelsController do
  describe "routing" do

    it "routes to #index" do
      get("/postocombustivels").should route_to("postocombustivels#index")
    end

    it "routes to #new" do
      get("/postocombustivels/new").should route_to("postocombustivels#new")
    end

    it "routes to #show" do
      get("/postocombustivels/1").should route_to("postocombustivels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/postocombustivels/1/edit").should route_to("postocombustivels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/postocombustivels").should route_to("postocombustivels#create")
    end

    it "routes to #update" do
      put("/postocombustivels/1").should route_to("postocombustivels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/postocombustivels/1").should route_to("postocombustivels#destroy", :id => "1")
    end

  end
end
