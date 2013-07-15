require "spec_helper"

describe SaikensController do
  describe "routing" do

    it "routes to #index" do
      get("/saikens").should route_to("saikens#index")
    end

    it "routes to #new" do
      get("/saikens/new").should route_to("saikens#new")
    end

    it "routes to #show" do
      get("/saikens/1").should route_to("saikens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/saikens/1/edit").should route_to("saikens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/saikens").should route_to("saikens#create")
    end

    it "routes to #update" do
      put("/saikens/1").should route_to("saikens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/saikens/1").should route_to("saikens#destroy", :id => "1")
    end

  end
end
