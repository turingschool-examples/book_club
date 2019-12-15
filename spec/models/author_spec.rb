require 'rails_helper'

describe Author, type: :model do
	describe 'validations' do
		it {should validate_presence_of :name}
	end

	describe 'relationships' do
		it {should have_many :book}
		it {should have_many :book_author}
	end
end
