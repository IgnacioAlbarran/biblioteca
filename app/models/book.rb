class Book < ApplicationRecord
  has_many :reviews, as: :reviewable
  belongs_to :author, counter_cache: true
  validates :author, presence: { if: :new_data? }

  private

  def new_data?
    created_at.nil? || created_at > Date.new(2019)
  end
end
