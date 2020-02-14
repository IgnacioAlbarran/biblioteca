require 'rails_helper'

RSpec.describe Author, type: :model do
  it 'should have a valid factory' do
    expect(FactoryBot.build(:author)).to be_valid
  end

  it 'should validate email' do
    expect(FactoryBot.build(:author, email: '')).not_to be_valid
  end

  it { is_expected.to validate_presence_of(:first_name) }
end
