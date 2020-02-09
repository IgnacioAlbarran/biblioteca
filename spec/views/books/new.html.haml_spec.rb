require 'rails_helper'

RSpec.describe "books/new", type: :view do
  before(:each) do
    assign(:book, Book.new(
      :title => "MyString",
      :author => nil,
      :description => "MyString",
      :year => 1,
      :available => false,
      :section => "MyString",
      :shelf => 1,
      :order => 1
    ))
  end

  it "renders new book form" do
    render

    assert_select "form[action=?][method=?]", books_path, "post" do

      assert_select "input[name=?]", "book[title]"

      assert_select "input[name=?]", "book[author_id]"

      assert_select "input[name=?]", "book[description]"

      assert_select "input[name=?]", "book[year]"

      assert_select "input[name=?]", "book[available]"

      assert_select "input[name=?]", "book[section]"

      assert_select "input[name=?]", "book[shelf]"

      assert_select "input[name=?]", "book[order]"
    end
  end
end
