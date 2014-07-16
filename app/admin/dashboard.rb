ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    panel "Top Rated Books" do
      # para "Welcome to ActiveAdmin."
      table do
        tr
        th "Title"
        th "Author"
        th "Rating"
        th "Date Finished"

        Book.good(10).map do |book|
          tr
          td book.title
          td book.author
          td book.rating
          td book.finished_on
        end
      end
    end

    columns do
      column do
        panel "Genre Overview" do
          table do
            tr
            th "Genre Name"
            th "Book Count"
            Genre.all.map do |genre|
              tr
              td genre.name
              td genre.book_count
            end
          end
        end
      end
    
      column do
        panel "Book Club Overview" do
          table do
            tr
            th "Name"
            th "Description"
            th "Books Read"
            BookClub.all.map do |book_club|
              tr
              td book_club.name
              td book_club.description
              td book_club.book_count
            end
          end
        end
      end
    
      column do
        panel "Authors" do
          table do
            tr
            th "Name"
            th "Book Count"
              Book.all.map(&:author).uniq.each do |author|
              book_count = Book.where(author: author).count
              tr
              td author
              td book_count
            end
          end
        end
      end
    end 
  end 
end
