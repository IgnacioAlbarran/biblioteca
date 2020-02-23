require 'rails_helper'

RSpec.describe "books/show", type: :view do
  before(:each) do
    @book = assign(:book, Book.create!(
      :title => "Title",
      :author => FactoryBot.create(:author, id: 2),
      :description => "Description",
      :year => 2,
      :available => false,
      :section => "Section",
      :shelf => 3,
      :order => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Section/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
