require 'rails_helper'

RSpec.describe "ruby_gems/edit", type: :view do
  before(:each) do
    @ruby_gem = assign(:ruby_gem, RubyGem.create!(
      :name => "MyString",
      :version => "MyString",
      :gem_uri => "MyString",
      :homepage_uri => "MyString"
    ))
  end

  it "renders the edit ruby_gem form" do
    render

    assert_select "form[action=?][method=?]", ruby_gem_path(@ruby_gem), "post" do

      assert_select "input#ruby_gem_name[name=?]", "ruby_gem[name]"

      assert_select "input#ruby_gem_version[name=?]", "ruby_gem[version]"

      assert_select "input#ruby_gem_gem_uri[name=?]", "ruby_gem[gem_uri]"

      assert_select "input#ruby_gem_homepage_uri[name=?]", "ruby_gem[homepage_uri]"
    end
  end
end
