class Book < ApplicationRecord
  has_many :reviews, as: :reviewable
  belongs_to :author, counter_cache: true
  validates :author, presence: { if: :new_data? }

  delegate :first_name, to: :author, prefix: true

  scope :with_title, -> { where.not(title: nil) }
  scope :from_year, ->(year) { where('created_at > ?', Date.new(year)) }

  attr_accessor :price

  VAT_BOOK = 4

  def price_vat_included
    return 0 if price.nil?
    vat = price * VAT_BOOK / 100
    total_price = price + vat
  end

  def reviews_count
    reviews.count
  end

  private

  def new_data?
    created_at.nil? || created_at > Date.new(2019)
  end
end
