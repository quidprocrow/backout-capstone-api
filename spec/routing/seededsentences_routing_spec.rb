require "rails_helper"

RSpec.describe SeededsentencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seededsentences").to route_to("seededsentences#index")
    end


    it "routes to #show" do
      expect(:get => "/seededsentences/1").to route_to("seededsentences#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/seededsentences").to route_to("seededsentences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/seededsentences/1").to route_to("seededsentences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/seededsentences/1").to route_to("seededsentences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seededsentences/1").to route_to("seededsentences#destroy", :id => "1")
    end

  end
end
