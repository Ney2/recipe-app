require 'rails_helper'

RSpec.describe 'Food', type: :request do
  describe 'GET index' do
    visit
    it "renders 'sign_in' template" do
      expect(response).to render_template(:sign_in)
    end

    it 'should have a succesfull connection' do
      expect(response).to have_http_status(:ok)
    end
  end
end
