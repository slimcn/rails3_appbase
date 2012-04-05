require "spec_helper"

describe Sheet0sController do
  describe "routing" do

    it "routes to #index" do
      get("/sheet0s").should route_to("sheet0s#index")
    end

    it "routes to #new" do
      get("/sheet0s/new").should route_to("sheet0s#new")
    end

    it "routes to #show" do
      get("/sheet0s/1").should route_to("sheet0s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sheet0s/1/edit").should route_to("sheet0s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sheet0s").should route_to("sheet0s#create")
    end

    it "routes to #update" do
      put("/sheet0s/1").should route_to("sheet0s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sheet0s/1").should route_to("sheet0s#destroy", :id => "1")
    end

  end
end
