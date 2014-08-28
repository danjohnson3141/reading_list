class AddIndexesToTables < ActiveRecord::Migration
  def change
    add_index :books, :title
    add_index :books, :rating
    add_column :books, :created_by, :integer, index: true
    add_column :books, :updated_by, :integer, index: true

    add_index :genres, :name
    add_column :genres, :created_by, :integer, index: true
    add_column :genres, :updated_by, :integer, index: true

  end
end
