require 'rails_helper'

RSpec.describe Author, type: :model do
  # relations
  it { should have_many(:author_books) }
  it { should have_many(:books).through(:author_books) }

  # validations
  it { should validate_presence_of(:name) }
end