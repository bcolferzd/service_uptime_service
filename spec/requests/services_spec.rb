require 'rails_helper'

RSpec.describe 'Services', type: :request do

  describe 'GET /api/services' do
    it 'recieves HTTP status 200' do
      get '/api/services'
      expect(response.status).to eq 200
    end

  end

end