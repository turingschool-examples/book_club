require 'rails_helper'

describe 'As a User' do
	describe 'I can go to the individual Authors show page' do
		it 'To see the Authors name, books they have written and average number of pages ' do

			@rowling = Author.create!(name: "J.K. Rowling")

			@king = Author.create!(name: "Stephen King")

			@koonz = Author.create!(name: "Dean Koonz")

			@fun = @king.book.create!(title: "Fun House",
																 publication_year: "1988",
															 	 pages: 521)

			@fun2 = @king.book.create!(title: "Fun House II",
																 publication_year: "1995",
															 	 pages: 637)

			@phantoms = @koonz.book.create!(title: "Phantoms",
																		 	publication_year: "1989",
																			pages: 897)

			@hpst = @rowling.book.create!(title: "Harry Potter and the Socerer's Stone",
																		publication_year: "1997",
																		pages: 223)

			@hpcs = @rowling.book.create!(title: "Harry Potter and the Chamber of Secrets",
																		publication_year: "1998",
																		pages: 251)

			@hppa = @rowling.book.create!(title: "Harrry Potter and the Prisoner of Azkaban",
																		publication_year: "1999",
																		pages: 317)

			visit "/authors/#{@rowling.id}"

			expect(page).to have_content(@rowling.name)
			expect(page).to have_content(@hppa.title)
			expect(page).to have_content(@hpcs.title)
			expect(page).to have_content(@hpst.title)
			expect(page).to have_content(263.66)

			expect(page).to_not have_content(@phantoms.title)
			expect(page).to_not have_content(@king.name)
		end
	end
end
