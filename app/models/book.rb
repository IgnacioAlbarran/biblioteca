class Book < ApplicationRecord
  has_many :reviews, as: :reviewable
  belongs_to :author, counter_cache: true
  validates :author, presence: { if: :new_data? }

  scope :with_title, -> { where.not(title: nil) }
  scope :from_year, ->(year) { where('created_at > ?', Date.new(year)) }

  private

  def new_data?
    created_at.nil? || created_at > Date.new(2019)
  end
end
