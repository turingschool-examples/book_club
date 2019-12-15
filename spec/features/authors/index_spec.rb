require 'rails_helper'

describe 'As a user' do
	describe 'When I visit the Authors Index page' do
		it 'I can see the names of all the authors' do

			@rowling = Author.create!(name: "J.K. Rowling")

			@king = Author.create!(name: "Stephen King")

			@koonz = Author.create!(name: "Dean Koonz")

			visit '/authors'

			expect(page).to have_content(@rowling.name)
			expect(page).to have_content(@king.name)
			expect(page).to have_content(@koonz.name)
		end
	end
end
