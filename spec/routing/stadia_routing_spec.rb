require "rails_helper"

RSpec.describe stadiumController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/stadium").to route_to("stadium#index")
    end

    it "routes to #new" do
      expect(get: "/stadium/new").to route_to("stadium#new")
    end

    it "routes to #show" do
      expect(get: "/stadium/1").to route_to("stadium#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/stadium/1/edit").to route_to("stadium#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/stadium").to route_to("stadium#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/stadium/1").to route_to("stadium#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/stadium/1").to route_to("stadium#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/stadium/1").to route_to("stadium#destroy", id: "1")
    end
  end
end
