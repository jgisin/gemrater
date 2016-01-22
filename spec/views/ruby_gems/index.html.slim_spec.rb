require 'rails_helper'

RSpec.describe "ruby_gems/index", type: :view do
  before(:each) do
    assign(:ruby_gems, [
      RubyGem.create!(
        :name => "Name",
        :version => "Version",
        :gem_uri => "Gem Uri",
        :homepage_uri => "Homepage Uri"
      ),
      RubyGem.create!(
        :name => "Name",
        :version => "Version",
        :gem_uri => "Gem Uri",
        :homepage_uri => "Homepage Uri"
      )
    ])
  end

  it "renders a list of ruby_gems" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Version".to_s, :count => 2
    assert_select "tr>td", :text => "Gem Uri".to_s, :count => 2
    assert_select "tr>td", :text => "Homepage Uri".to_s, :count => 2
  end
end
