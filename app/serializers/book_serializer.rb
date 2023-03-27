class BookSerializer < ActiveModel::Serializer
  attributes :title, :isbn_13, :list_price, :publication_year, :edition, :authors, :publisher

  def authors
    object.author_names
  end

  def publisher
    object.publisher.name
  end
end
