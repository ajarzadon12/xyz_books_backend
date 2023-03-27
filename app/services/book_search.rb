class BookSearch < ApplicationService
  def initialize(isbn_13)
    @isbn_13 = isbn_13
    @isbn13_ary = @isbn_13.gsub('-', '').gsub(/\s+/, "").split('')
  end

  def call
    return { msg: 'Invalid ISBN', error_code: 400 } unless valid_isbn_13?

    if book = Book.where(isbn_13: @isbn_13).last
      return book
    else
      return { msg: 'Book not found', error_code: 404 }
    end
  end

  private

  def valid_isbn_13?
    return false if (@isbn13_ary.count != 13)

    checksum = @isbn13_ary.each_with_index.reduce(0) do |sum, (value, index)|
       mult = ((index % 2) === 0) ? 1 : 3
      return sum + (value.to_i * mult)
    end

    return (checksum % 10) === 0
  end
end
