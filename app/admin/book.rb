ActiveAdmin.register Book do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  permit_params do
   permitted = [:title, :description, :rating, :finished_on]
   # permitted << :other if resource.something?
   permitted
  end

  filter :title
  filter :author
  filter :keywords
  filter :genres
  filter :rating
  filter :book_clubs
  filter :finished_on
  filter :created_at
  filter :updated_at


  form do |f|
    f.inputs "#{resource.class.name} Details" do
      f.input :title
      f.input :author
      f.input :description
      f.input :rating, as: :radio, :collection => [[" 5 - Awesome", '5'], [" 4 - Great", "4"], [" 3 - Good", "3"], [" 2 - Bad", "2"], [" 1 - Awful", "1"]]
      f.input :finished_on, as: :date_select
      f.inputs "Cover Art" do
        "<br>".html_safe
        image_from_amazon(resource.amazon_id)
      end
    end
    f.actions
  end


  show do |ad|
    attributes_table do
      row :title
      row :author
      row :description
      row :rating
      row :finished_on
      row :image do
        image_from_amazon(book.amazon_id)
      end
    end
    active_admin_comments
  end

  controller do
    def create
      if Book.new(permitted_params[:book]).save
        resource = Book.last
        flash[:notice] = "Book created successfully"
        redirect_to :action => :index
      else
        render :edit
      end
    end

    def update
      @book = resource
      if @book.update(permitted_params[:book])
        flash[:notice] = "#{resource.class.name} updated successfully"
        render :action => :show
      else
        render :edit
      end
    end
  end
end
