require 'rails_helper'

RSpec.describe 'Book', type: :model do
  # relations
  it { should have_many(:authors) }

  # validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:number_of_pages) }
  it { should validate_presence_of(:publication_year) }
end