require 'rails_helper'

RSpec.describe 'Books /index' do
  before :each do
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
  end

  context 'user visits /books index page' do
    before { visit '/books' }

    it 'should display all books' do
      within("#books-content") do
        expect(page).to have_content(@author_1.books.first.title)
        expect(page).to have_content(@author_1.books.last.title)
      end
    end

    xit 'should allow me to visit a books author' do
      within("#books-content") do
        within("#book-1") do
          click_link @author_1.name
        end
      end

      expect(current_path).to eq("/authors/#{@author_1.id}")
    end
  end
end