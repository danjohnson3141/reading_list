require 'colorize'
puts "Clearing existing data".green
BookClubBook.destroy_all
BookGenre.destroy_all
Book.destroy_all
Genre.destroy_all
BookClub.destroy_all


# if Rails.env != "production"
#   puts "Reseting auto increment".green
#   ActiveRecord::Base.connection.tables.each do |table|
#     ActiveRecord::Base.connection.execute("ALTER TABLE #{table} AUTO_INCREMENT = 1")
#   end
# end

fiction = Genre.create!(name: 'Fiction')
sci_fi = Genre.create!(name: 'Science Fiction')
fantasy = Genre.create!(name: 'Fantasy')
apple = Genre.create!(name: 'Apple')
non_fiction = Genre.create!(name: 'Non-Fiction')

Book.create!([{
  title: "Hyperion",
  author: "Dan Simmons",
  description: "Probably my favorite science fiction book (and series) I've ever read. Hyperion is written in a style similar to The Canterbury Tales, in which a series of stories are told by the main characters. Each story is a gem in itself, but alude to the larger storyline. The scope of the story is ambitious - spanning time, planets religion and love.",
  amazon_id: "0553283685",
  rating: 5,
  finished_on: 10.days.ago,
  genres: [fiction, sci_fi]
},
{
  title: "Jony Ive: The Genius Behind Apple's Greatest Products",
  author: "Leander Kahney",
  description: "Even though I respect Ive, I felt this biography only hit skin deep. It went over all the major events in his life, his passion for design, awards he achieved -- but that's really it. I dont't feel I know him anymore than before reading this.",
  amazon_id: "159184617X",
  rating: 4,
  finished_on: 1.day.ago,
  genres: [non_fiction, apple]
},
{
  title: "Mindstorms",
  author: "Seymour A. Papert",
  description: "Although this book focuses on the cognitive advantages to having children use technology from an early age, it is also an in depth look at how people can learn for themseves. As someone who was often distracted and bored at times during school, Mindstorms highlights some of the reasoning behind that feeling and what we can do as teachers to help minimize it.",
  amazon_id: "0465046746",
  rating: 1,
  finished_on: nil,
  genres: [non_fiction]
},
{
  title: "The Gunslinger: The Dark Tower Book 1",
  author: "Stephen King",
  description: "In 1978 Stephen King introduced the world to the last Gunslinger, Roland of Gilead.  Nothing has been the same since. Over twenty years later the quest for the Dark Tower continues to take readers on a wildly epic ride. Through parallel worlds and across time, Roland must brave desolate wastelands and endless deserts, drifting into the unimaginable and the familiar as the road to the Dark Tower extends beyond its own pages. A classic tale of colossal scope—crossing over terrain from The Stand, The Eyes of the Dragon, Insomnia, The Talisman, Black House, Hearts in Atlantis, ‘Salem’s Lot and other familiar King haunts—the adventure takes hold with the turn of each page.",
  amazon_id: "0451210840",
  rating: 5,
  finished_on: nil,
  genres: [fiction, sci_fi, fantasy]
},
{
  title: "The Drawing of the Three: The Dark Tower Book 2",
  author: "Stephen King",
  description: "While pursuing his quest for the Dark Tower through a world that is a nightmarishly distorted mirror image of our own, Roland is drawn through a mysterious door that brings him into contemporary America.",
  amazon_id: "0451210859",
  rating: 5,
  finished_on: nil,
  genres: [fiction, sci_fi, fantasy]
},
{
  title: "The Waste Lands: The Dark Tower Book 3",
  author: "Stephen King",
  description: "Roland, The Last Gunslinger, moves ever closer to The Dark Tower of his dreams and nightmares—as he crosses a desert of damnation in a macabre world that is a twisted image of our own. With him are those he has drawn to this world: street-smart Eddie Dean and courageous wheelchair-bound Susannah.",
  amazon_id: "0451210867",
  rating: 5,
  finished_on: nil,
  genres: [fiction, sci_fi, fantasy]
},
{
  title: "Wizard and Glass: The Dark Tower Book 4",
  author: "Stephen King",
  description: "Roland and his band of followers have narrowly escaped one world and slipped into the next. There Roland tells them a tale of long-ago love and adventure involving a beautiful and quixotic woman. And they will be drawn into an ancient mystery of spellbinding magic and supreme menace.",
  amazon_id: "0451210875",
  rating: 5,
  finished_on: nil,
  genres: [fiction, sci_fi, fantasy]
},
# {
#   title: "The Waste Lands: The Dark Tower Book 3",
#   author: "Stephen King",
#   description: "",
#   amazon_id: "0451210867",
#   rating: 5,
#   finished_on: nil,
#   genres: [fiction, sci_fi, fantasy]
# },
# {
#   title: "The Waste Lands: The Dark Tower Book 3",
#   author: "Stephen King",
#   description: "",
#   amazon_id: "0451210867",
#   rating: 5,
#   finished_on: nil,
#   genres: [fiction, sci_fi, fantasy]
# }

])

BookClub.create!([
  {
    name: 'Sci-Fi Friends',
    description: 'The Sci-Fi Friends bookclub likes sci-fi books a lot!!!',
    books: [Book.find_by(title: "The Gunslinger: The Dark Tower Book 1"), Book.find_by(title: "Hyperion")]
  },
  {
    name: 'Non Fiction Folks',
    description: 'We do not like fiction',
    books: [Book.find_by(title: "Mindstorms"), Book.find_by(title: "Jony Ive: The Genius Behind Apple's Greatest Products"), ]
  },
  {
    name: 'Fantasy Fans',
    description: 'Pointy hats and robes',
    books: [Book.find_by(title: "Mindstorms"), Book.find_by(title: "Jony Ive: The Genius Behind Apple's Greatest Products"), Book.find_by(title: "The Gunslinger: The Dark Tower Book 1")]
  }
  ])

p "Created #{Book.count} books..."
p "Created #{Genre.count} genres..."
p "Created #{BookClub.count} book clubs..."
