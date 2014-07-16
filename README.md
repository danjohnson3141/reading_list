###reading_list

This started with a Codeschool.com Soup to Bits instructional video but I've continued to add on to the basic application.

I've added a book_club model and table with associations to tie everything together via:
```
has_many :book_club_books
has_many :books, through: :book_club_books
```

<a href='http://postimg.org/image/b67evgk5b/' target='_blank'><img src='http://s11.postimg.org/b67evgk5b/Screen_Shot_2014_07_15_at_12_56_12_PM.jpg' border='0' alt="Screen Shot 2014 07 15 at 12 56 12 PM" /></a>

http://reading-lister.herokuapp.com/

####Admin Dashboard
Includes panels showing top rated books, book inventory by author, book inventory by genre, and book club participation.

<a href='http://postimg.org/image/3nhbwltrx/' target='_blank'><img src='http://s30.postimg.org/3nhbwltrx/Screen_Shot_2014_07_16_at_4_12_28_PM.jpg' border='0' alt="Screen Shot 2014 07 16 at 4 12 28 PM" /></a>
