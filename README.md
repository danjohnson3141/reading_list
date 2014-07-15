###reading_list

This started with a Codeschool.com Soup to Bits instructional video but I've continued to add on to the basic application.

I've added a book_club model and table with associations to tie everything together via:
```
has_many :book_club_books
has_many :books, through: :book_club_books
```

Next up I'll be adding the active-admin gem to give the sample site an admin interface and dashboard.

<a href='http://postimg.org/image/b67evgk5b/' target='_blank'><img src='http://s11.postimg.org/b67evgk5b/Screen_Shot_2014_07_15_at_12_56_12_PM.jpg' border='0' alt="Screen Shot 2014 07 15 at 12 56 12 PM" /></a>

http://reading-lister.herokuapp.com/
