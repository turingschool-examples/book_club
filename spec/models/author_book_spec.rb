require 'rails_helper'

RSpec.describe AuthorBook, type: :model do
  describe "relationships" do
    it {should have_many}
    it {should belong_to :collection}
    it {should belong_to :book}
  end
end
