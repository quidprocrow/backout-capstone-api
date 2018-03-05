require 'rails_helper'

RSpec.describe "Seededsentences", type: :request do
  describe "GET /seededsentences" do
    it "works! (now write some real specs)" do
      get seededsentences_path
      expect(response).to have_http_status(200)
    end
  end
end
