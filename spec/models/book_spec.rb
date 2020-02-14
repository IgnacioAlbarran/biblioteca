require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'should have a valid factory' do
    expect(FactoryBot.build(:book)).to be_valid
  end

  it { is_expected.to validate_presence_of(:author) }

  it 'should not require author in existing book' do
    expect(FactoryBot.build(:book, created_at: Date.new(2015))).to be_valid
  end
end
