@author_1 = Author.create(
  name: "Jack Ma"
)
@author_1.books.create(
  title: "Starwars Book:1",
  pages: 56,
  publication_year: 1999
)
@author_1.books.create(
  title: "Starwars Book:2",
  pages: 107,
  publication_year: 2001
)