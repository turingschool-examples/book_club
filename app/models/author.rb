class Author < ApplicationRecord
	validates_presence_of :name

	has_many :book_authors
	has_many :authors, through: :book_authors
end
