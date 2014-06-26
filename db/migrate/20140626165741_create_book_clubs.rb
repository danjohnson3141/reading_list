class CreateBookClubs < ActiveRecord::Migration
  def change
    create_table :book_clubs do |t|
      t.string :name
      t.text :description
      # t.references :books, index: true
    end
  end
end
