class BookClub < ActiveRecord::Base
  has_many :book_club_books
  has_many :books, through: :book_club_books

  def book_count
    self.book_club_books.count
  end
end
