class CreateCollectionBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :collection_books do |t|
      t.references :book, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
