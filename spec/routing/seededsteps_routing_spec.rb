require "rails_helper"

RSpec.describe SeededstepsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seededsteps").to route_to("seededsteps#index")
    end


    it "routes to #show" do
      expect(:get => "/seededsteps/1").to route_to("seededsteps#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/seededsteps").to route_to("seededsteps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/seededsteps/1").to route_to("seededsteps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/seededsteps/1").to route_to("seededsteps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seededsteps/1").to route_to("seededsteps#destroy", :id => "1")
    end

  end
end
