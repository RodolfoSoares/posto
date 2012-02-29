require "spec_helper"

describe PostousuariosController do
  describe "routing" do

    it "routes to #index" do
      get("/postousuarios").should route_to("postousuarios#index")
    end

    it "routes to #new" do
      get("/postousuarios/new").should route_to("postousuarios#new")
    end

    it "routes to #show" do
      get("/postousuarios/1").should route_to("postousuarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/postousuarios/1/edit").should route_to("postousuarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/postousuarios").should route_to("postousuarios#create")
    end

    it "routes to #update" do
      put("/postousuarios/1").should route_to("postousuarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/postousuarios/1").should route_to("postousuarios#destroy", :id => "1")
    end

  end
end
