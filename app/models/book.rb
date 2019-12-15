class Book < ApplicationRecord
	validates_presence_of :title, :publication_year, :pages

	has_many :book_author
	has_many :author, through: :book_author
end
