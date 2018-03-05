require "rails_helper"

RSpec.describe SeededwordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seededwords").to route_to("seededwords#index")
    end


    it "routes to #show" do
      expect(:get => "/seededwords/1").to route_to("seededwords#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/seededwords").to route_to("seededwords#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/seededwords/1").to route_to("seededwords#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/seededwords/1").to route_to("seededwords#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seededwords/1").to route_to("seededwords#destroy", :id => "1")
    end

  end
end
