require 'rails_helper'

RSpec.describe "ruby_gems/show", type: :view do
  before(:each) do
    @ruby_gem = assign(:ruby_gem, RubyGem.create!(
      :name => "Name",
      :version => "Version",
      :gem_uri => "Gem Uri",
      :homepage_uri => "Homepage Uri"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Version/)
    expect(rendered).to match(/Gem Uri/)
    expect(rendered).to match(/Homepage Uri/)
  end
end
