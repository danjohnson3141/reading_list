# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.destroy_all

Book.create!([
  {
    title: "The Gunslinger: (The Dark Tower #1)",
    author: "Stephen King",
    description: "In 1978 Stephen King introduced the world to the last Gunslinger, Roland of Gilead.  Nothing has been the same since. Over twenty years later the quest for the Dark Tower continues to take readers on a wildly epic ride. Through parallel worlds and across time, Roland must brave desolate wastelands and endless deserts, drifting into the unimaginable and the familiar as the road to the Dark Tower extends beyond its own pages. A classic tale of colossal scope—crossing over terrain from The Stand, The Eyes of the Dragon, Insomnia, The Talisman, Black House, Hearts in Atlantis, ‘Salem’s Lot and other familiar King haunts—the adventure takes hold with the turn of each page.",
    amazon_id: "0451210840"
  },
  {
    title: "The Drawing of the Three: (The Dark Tower #2)",
    author: "Stephen King",
    description: "While pursuing his quest for the Dark Tower through a world that is a nightmarishly distorted mirror image of our own, Roland is drawn through a mysterious door that brings him into contemporary America.\n      Here he links forces with the defiant young Eddie Dean, and with the beautiful, brilliant, and brave Odetta Holmes, in a savage struggle against underworld evil and otherworldly enemies.\n      Once again, Stephen King has masterfully interwoven dark, evocative fantasy and icy realism.",
    amazon_id: "0451210859"
  }
  ])