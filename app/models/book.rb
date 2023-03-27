class Book < ApplicationRecord
  belongs_to :publisher
  has_many :author_books
  has_many :authors, through: :author_books
  
  validates :title, :isbn_13, :list_price, :publication_year, presence: true

  def author_names
    authors.map(&:full_name).join(', ')
  end
end
