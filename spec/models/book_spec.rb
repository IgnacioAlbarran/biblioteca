require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'should have a valid factory' do
    expect(FactoryBot.build(:book)).to be_valid
  end

  it { is_expected.to validate_presence_of(:author) }

  it 'should not require author in existing book' do
    expect(FactoryBot.build(:book, created_at: Date.new(2015))).to be_valid
  end

  describe 'price with VAT' do
    context 'for a 5% VAT' do
      before { stub_const('Book::VAT_BOOK', 5) }

      it 'applies correct VAT to book' do
        expect(Book.new(price: 100).price_vat_included).to eq(105)
      end

      it 'supports big numbers' do
        expect(Book.new(price: 1_000_000).price_vat_included).to eq(1_050_000)
      end
    end
  end

  it 'should return 0 for a price of 0' do
    expect(Book.new(price: 0).price_vat_included).to eq(0)
  end

  it 'should return 0 for a price with nil as value' do
    expect(Book.new(price: nil).price_vat_included).to eq(0)
  end

  describe 'reviews count' do
    let(:book) { FactoryBot.create(:book) }

    context 'with two reviews' do
      before { FactoryBot.create_list(:review, 2, reviewable: book) }

      it 'should give the number of reviews for a book' do
        expect(book.reviews_count).to eq(2)
      end
    end

    context 'with no reviews' do
      it 'should return 0' do
        expect(book.reviews_count).to eq(0)
      end
    end
  end
end
