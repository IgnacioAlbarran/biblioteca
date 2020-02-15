class Author < ApplicationRecord
  has_many :books
  validates :email, :first_name, presence: true
end
