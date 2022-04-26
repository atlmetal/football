require "rails_helper"

RSpec.describe ConfederationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/confederations").to route_to("confederations#index")
    end

    it "routes to #new" do
      expect(get: "/confederations/new").to route_to("confederations#new")
    end

    it "routes to #show" do
      expect(get: "/confederations/1").to route_to("confederations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/confederations/1/edit").to route_to("confederations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/confederations").to route_to("confederations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/confederations/1").to route_to("confederations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/confederations/1").to route_to("confederations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/confederations/1").to route_to("confederations#destroy", id: "1")
    end
  end
end
