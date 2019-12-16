require 'rails_helper'

RSpec.describe Book, type: :model do
  # relations
  it { should have_many(:author_books) }
  it { should have_many(:authors).through(:author_books) }

  # validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:pages) }
  it { should validate_presence_of(:publication_year) }
end