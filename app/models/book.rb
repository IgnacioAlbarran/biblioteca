class Book < ApplicationRecord
  validates :author, presence: { if: :new_data? }
  belongs_to :author

  private

  def new_data?
    created_at.nil? || created_at > Date.new(2019)
  end
end
