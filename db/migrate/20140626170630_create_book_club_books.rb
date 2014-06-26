class CreateBookClubBooks < ActiveRecord::Migration
  def change
    create_table :book_club_books do |t|
      t.references :book, index: true
      t.references :book_club, index: true
    end
  end
end
