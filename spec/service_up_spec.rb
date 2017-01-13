require 'rspec'
require 'spec/spec_helper'

describe 'Show service is up' do

  let(:body) { { :key => "ok".to_json }}
  before do
    post '/service/create', body, {'CONTENT_TYPE' => 'application/json' }
  end

  it 'should query if the service is up' do


  end
end