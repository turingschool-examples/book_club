require 'rails_helper'

RSpec.describe "As a user" do
  describe "when i visit the books index page", type: :feature do
    before :each do
      @phil_delong = Author.create(
        name:             "Phil DeLong"
      )

      @book = Book.create(
        title:            "The Book",
        pages:            100,
        publication_year: "2020",
      )
      @phil_delong.books << @book
      visit "/books"
    end
    it "i see all books with title pages year authors" do
      expect(page).to have_content("#{@book.title}")
      expect(page).to have_content("#{@book.pages}")
      expect(page).to have_content("#{@book.publication_year}")
      expect(page).to have_content("#{@book.author}")
    end
  end
end
