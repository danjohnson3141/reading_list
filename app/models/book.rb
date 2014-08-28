class Book < ActiveRecord::Base

  has_many :book_genres
  has_many :genres, through: :book_genres
  has_many :book_club_books
  has_many :book_clubs, through: :book_club_books

  scope :good, ->(limit=nil){ where("rating > 3").order(rating: :desc).limit(limit) }
  scope :finished, ->{ where.not(finished_on: nil) }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
  scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
  scope :filter, ->(name){
    joins(:genres).where('genres.name = ?', name) if name.present? && name.downcase != 'all'
  }

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  before_save :set_keywords

  def finished?
    finished_on.present?
  end

  protected
    def set_keywords
      self.keywords = [title, author, description].join(' ')
    end
end
