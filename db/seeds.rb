Book.destroy_all
Genre.destroy_all
BookClub.destroy_all

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
  rating: 1,
  finished_on: nil,
  genres: [fiction, sci_fi, fantasy]
}])

BookClub.create!([
  {
    name: 'Sci-Fi Friends',
    description: 'The Sci-Fi Friends bookclub likes sci-fi books a lot!!!',
    books: [Book.find_by(title: "The Gunslinger: The Dark Tower Book 1"), Book.find_by(title: "Hyperion")]
  },
  {
    name: 'Non fiction folks',
    description: 'We do not like fiction',
    books: [Book.find_by(title: "Mindstorms"), Book.find_by(title: "Jony Ive: The Genius Behind Apple's Greatest Products"), ]
  },
  {
    name: 'Fantasy Fans',
    description: 'Pointy hats and robes',
    books: [Book.find_by(title: "Mindstorms"), Book.find_by(title: "Jony Ive: The Genius Behind Apple's Greatest Products"), ]
  }
  ])

p "Created #{Book.count} books..."
p "Created #{Genre.count} genres..."
