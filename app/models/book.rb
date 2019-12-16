class Book < ApplicationRecord
  has_many :authors

  validates_presence_of :title, :number_of_pages, :publication_year
end
