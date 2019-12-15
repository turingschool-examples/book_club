require 'rails_helper'

describe 'As a User' do
	describe 'I can visit the books index page' do

		it 'Can see all the books and their title, pub. year, and pages' do
			@hpst = Book.create!(title: "Harry Potter and the Socerer's Stone",
													 publication_year: "1997",
												 	 pages: 223)

			@hpcs = Book.create!(title: "Harry Potter and the Chamber of Secrets",
													 publication_year: "1998",
												 	 pages: 251)

			@hppa = Book.create!(title: "Harrry Potter and the Prisoner of Azkaban",
													 publication_year: "1999",
												 	 pages: 317)

			visit '/books'

			expect(page).to have_content(@hpst.title)
			expect(page).to have_content(@hpst.publication_year)
			expect(page).to have_content(@hpst.pages)

			expect(page).to have_content(@hpcs.title)
			expect(page).to have_content(@hpcs.publication_year)
			expect(page).to have_content(@hpcs.pages)

			expect(page).to have_content(@hppa.title)
			expect(page).to have_content(@hppa.publication_year)
			expect(page).to have_content(@hppa.pages)

			expect(page).to_not have_content("Harry Potter and the Goblet of Fire")
			expect(page).to_not have_content("2000")
			expect(page).to_not have_content(517)
		end
	end
end
