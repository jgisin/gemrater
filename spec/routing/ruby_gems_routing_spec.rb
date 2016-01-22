require "rails_helper"

RSpec.describe RubyGemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ruby_gems").to route_to("ruby_gems#index")
    end

    it "routes to #new" do
      expect(:get => "/ruby_gems/new").to route_to("ruby_gems#new")
    end

    it "routes to #show" do
      expect(:get => "/ruby_gems/1").to route_to("ruby_gems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ruby_gems/1/edit").to route_to("ruby_gems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ruby_gems").to route_to("ruby_gems#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ruby_gems/1").to route_to("ruby_gems#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ruby_gems/1").to route_to("ruby_gems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ruby_gems/1").to route_to("ruby_gems#destroy", :id => "1")
    end

  end
end
