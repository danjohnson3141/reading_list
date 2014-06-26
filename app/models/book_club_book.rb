class BookClubBook < ActiveRecord::Base
  belongs_to :book
  belongs_to :book_club
end
