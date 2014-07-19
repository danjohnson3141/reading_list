require 'spec_helper'

describe 'models/Book' do  

  context "Default values;" do
    it "keywords are created using title, author, description" do
      book = Book.create(title: 'foo', author: 'bar', description: 'description')
      book.keywords.should eq 'foo bar description'
    end
  end
  
  context "Validation;" do
    it 'title is required' do
      Book.create(title: nil, author: 'bar', description: 'description').should_not be_valid
    end

    it 'author is required' do
      Book.create(title: 'title', author: nil, description: 'description').should_not be_valid
    end
  end

end