require 'rails_helper'

RSpec.describe ServiceOwner, type: :model do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:last_name) }

  it 'has a valid factory' do
    expect(build(:service_owner)).to be_valid
  end
end
