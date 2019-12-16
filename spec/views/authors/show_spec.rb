require 'rails_helper'

RSpec.describe "Authors /show" do
  before :each do
    @author_1 = Author.create(
      name: "Jack Ma"
    )
    @author_1.books.create(
      title: "Starwars Book:1",
      pages: 50,
      publication_year: 1999
    )
    @author_1.books.create(
      title: "Starwars Book:2",
      pages: 100,
      publication_year: 2001
    )
  end

  context 'user visits authors /show page' do
    before { visit "/authors/#{@author_1.id}" }
    
    it 'displays all the author information' do
      expect(page).to have_content(@author_1.name)
    end

    it 'displays all the authors book titles' do
      expect(page).to have_content(@author_1.books.first.title)
      expect(page).to have_content(@author_1.books.last.title)
    end

    it 'displays average number of pages for their books' do
      expect(page).to have_content(75)
    end
  end
end