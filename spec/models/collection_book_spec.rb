require 'rails_helper'

RSpec.describe CollectionBook, type: :model do
  describe "relationships" do
    it {should belong_to :collection}
    it {should belong_to :book}
  end
end
