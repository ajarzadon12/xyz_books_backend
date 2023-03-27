# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


author1 = Author.create(first_name: 'Joel', last_name: 'Hartse')
author2 = Author.create(first_name: 'Hannah', middle_name: 'P.', last_name: 'Templer')
author3 = Author.create(first_name: 'Marguerite', middle_name: 'Z.', last_name: 'Duras')
author4 = Author.create(first_name: 'Kingsley', last_name: 'Amis')
author5 = Author.create(first_name: 'Fannie', middle_name: 'Peters', last_name: 'Flagg')
author6 = Author.create(first_name: 'Camille', middle_name: 'Byron', last_name: 'Paglia')
author7 = Author.create(first_name: 'Rainer', middle_name: 'Steel', last_name: 'Rilke')

publisher1 = Publisher.create(name: 'Paste Magazine')
publisher2 = Publisher.create(name: 'Publishers Weekly')
publisher3 = Publisher.create(name: 'Graywolf Press')
publisher4 = Publisher.create(name: "McSweeney's")


book1 = Book.create(title: 'American Elf', isbn_13: '978-1-891830-85-3', publication_year: '2004', publisher: publisher1, edition: 'Book 2', list_price: '1000')
AuthorBook.create(author: author1, book: book1)
AuthorBook.create(author: author2, book: book1)
AuthorBook.create(author: author3, book: book1)

book2 = Book.create(title: 'Cosmoknights', isbn_13: '978-1-60309-454-2', publication_year: '2019', publisher: publisher2, edition: 'Book 1', list_price: '2000')
AuthorBook.create(author: author4, book: book2)

book3 = Book.create(title: 'Essex County', isbn_13: '978-1-60309-038-4', publication_year: '1990', publisher: publisher3, list_price: '500')
AuthorBook.create(author: author4, book: book3)

book4 = Book.create(title: 'Hey, Mister (Vol 1)', isbn_13: '978-1-891830-02-0', publication_year: '2000', publisher: publisher3, edition: 'After School Special', list_price: '1200')
AuthorBook.create(author: author2, book: book4)
AuthorBook.create(author: author5, book: book4)
AuthorBook.create(author: author6, book: book4)

book5 = Book.create(title: 'The Underwater Welder', isbn_13: '978-1-60309-398-9', publication_year: '202', publisher: publisher4, list_price: '3000')
AuthorBook.create(author: author7, book: book5)
