require "rails_helper"

RSpec.describe FootballOrganizationsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/football_organizations").to route_to("football_organizations#index")
    end

    it "routes to #new" do
      expect(get: "/football_organizations/new").to route_to("football_organizations#new")
    end

    it "routes to #show" do
      expect(get: "/football_organizations/1").to route_to("football_organizations#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/football_organizations/1/edit").to route_to("football_organizations#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/football_organizations").to route_to("football_organizations#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/football_organizations/1").to route_to("football_organizations#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/football_organizations/1").to route_to("football_organizations#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/football_organizations/1").to route_to("football_organizations#destroy", id: "1")
    end
  end
end
