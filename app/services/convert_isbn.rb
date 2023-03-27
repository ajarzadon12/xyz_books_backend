class ConvertIsbn < ApplicationService
  def initialize(isbn_13)
    @isbn_13 = isbn_13
    @isbn13_ary = @isbn_13.gsub('-', '').gsub(/\s+/, "").split('')
    @test_isbn10 = @isbn13_ary[3..-2]
  end

  def call
    return { msg: 'Invalid ISBN', error_code: 400 } unless valid_isbn_13?
    
    checksum = @test_isbn10.reverse.each_with_index.reduce(0) do |sum, (value, index)|
      sum + (value.to_i * (index + 2))
    end
    last_num = 11 - (checksum % 11);
    last_num = last_num >= 10 ? 'X' : last_num
    { isbn10: "#{@isbn_13[4..-2]}#{last_num}" }
  end

  private

  def valid_isbn_13?
    return false if (@isbn13_ary.count != 13)

    checksum = @isbn13_ary.each_with_index.reduce(0) do |sum, (value, index)|
       mult = ((index % 2) == 0) ? 1 : 3
      return sum + (value.to_i * mult)
    end

    return (checksum % 10) == 0
  end
end
