class CollectionBook < ApplicationRecord
  belongs_to :collection
  belongs_to :book
end
