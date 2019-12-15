require 'rails_helper'

RSpec.describe "User can see all books" do
  it "can see all books" do
    book_1 = Book.create( title: "All the Light We Cannot See",
                          pages: 544,
                          publication_year: 2014)

    book_2 = Book.create( title: "The Nightingale",
                          pages: 608,
                          publication_year: 2017)

    visit "/books"

    within "#book-#{book_1.id}" do
      expect(page).to have_content("All the Light We Cannot See")
      expect(page).to have_content(544)
      expect(page).to have_content(2014)
      expect(page).to have_content("Anthony Doerr")

    within "#book-#{book_2.id}" do
      expect(page).to have_content("The Nightingale")
      expect(page).to have_content(608)
      expect(page).to have_content(2017)
      expect(page).to have_content("Kristin Hannah")
    end
    end
  end
end
