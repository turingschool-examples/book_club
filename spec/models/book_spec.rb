require 'rails_helper'

describe Book, type: :model do
	describe 'validations' do
		it {should validate_presence_of :title}
		it {should validate_presence_of :publication_year}
		it {should validate_presence_of :pages}
	end

	describe 'relationships' do
		it {should have_many :author}
		it {should have_many :book_author}
	end
end
