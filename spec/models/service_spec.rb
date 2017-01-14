require 'rails_helper'

RSpec.describe Service, type: :model do
  it { should validate_presence_of(:name) }

  it 'has a valid factory' do
    expect(build(:service)).to be_valid
  end
end
