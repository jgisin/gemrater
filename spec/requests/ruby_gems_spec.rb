require 'rails_helper'

RSpec.describe "RubyGems", type: :request do
  describe "GET /ruby_gems" do
    it "works! (now write some real specs)" do
      get ruby_gems_path
      expect(response).to have_http_status(200)
    end
  end
end
