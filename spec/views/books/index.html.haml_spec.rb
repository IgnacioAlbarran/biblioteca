require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        :title => "Title",
        :author => FactoryBot.create(:author),
        :description => "Description",
        :year => 2,
        :available => false,
        :section => "Section",
        :shelf => 3,
        :order => 4
      ),
      Book.create!(
        :title => "Title",
        :author => FactoryBot.create(:author),
        :description => "Description",
        :year => 2,
        :available => false,
        :section => "Section",
        :shelf => 3,
        :order => 4
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Section".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
