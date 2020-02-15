require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'should have a valid factory' do
    expect(FactoryBot.build(:book)).to be_valid
  end

  it { is_expected.to validate_presence_of(:author) }

  it 'should not require author in existing book' do
    expect(FactoryBot.build(:book, created_at: Date.new(2015))).to be_valid
  end

  it 'applies correct VAT to book' do
    stub_const('Book::VAT_BOOK', 5)
    expect(Book.new(price: 100).price_vat_included).to eq(105)
  end

  it 'should return 0 for a price of 0' do
    expect(Book.new(price: 0).price_vat_included).to eq(0)
  end

  it 'should return 0 for a price with nil as value' do
    expect(Book.new(price: nil).price_vat_included).to eq(0)
  end
end
