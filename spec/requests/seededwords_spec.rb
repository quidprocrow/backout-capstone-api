require 'rails_helper'

RSpec.describe "Seededwords", type: :request do
  describe "GET /seededwords" do
    it "works! (now write some real specs)" do
      get seededwords_path
      expect(response).to have_http_status(200)
    end
  end
end
