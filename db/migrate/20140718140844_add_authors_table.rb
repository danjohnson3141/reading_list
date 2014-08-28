class AddAuthorsTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.date :dob
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
    add_index :authors, :first_name
    add_index :authors, :last_name
    add_index :authors, :dob
  end
end
