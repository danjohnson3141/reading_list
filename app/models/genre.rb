class Genre < ActiveRecord::Base
  has_many :book_genres
  has_many :books, through: :book_genres

  def book_count
    self.book_genres.count
  end
end
