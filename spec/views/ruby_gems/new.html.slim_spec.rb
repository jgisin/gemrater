require 'rails_helper'

RSpec.describe "ruby_gems/new", type: :view do
  before(:each) do
    assign(:ruby_gem, RubyGem.new(
      :name => "MyString",
      :version => "MyString",
      :gem_uri => "MyString",
      :homepage_uri => "MyString"
    ))
  end

  it "renders new ruby_gem form" do
    render

    assert_select "form[action=?][method=?]", ruby_gems_path, "post" do

      assert_select "input#ruby_gem_name[name=?]", "ruby_gem[name]"

      assert_select "input#ruby_gem_version[name=?]", "ruby_gem[version]"

      assert_select "input#ruby_gem_gem_uri[name=?]", "ruby_gem[gem_uri]"

      assert_select "input#ruby_gem_homepage_uri[name=?]", "ruby_gem[homepage_uri]"
    end
  end
end
