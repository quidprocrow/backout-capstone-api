require "rails_helper"

RSpec.describe SentencesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sentences").to route_to("sentences#index")
    end


    it "routes to #show" do
      expect(:get => "/sentences/1").to route_to("sentences#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/sentences").to route_to("sentences#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sentences/1").to route_to("sentences#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sentences/1").to route_to("sentences#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sentences/1").to route_to("sentences#destroy", :id => "1")
    end

  end
end