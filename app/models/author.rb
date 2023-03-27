class Author < ApplicationRecord
  has_many :author_books
  has_many :books, :through => :author_books

  validates :first_name, :last_name, presence: true

  def full_name
    "#{first_name} #{middle_name} #{last_name}".squish
  end
end
