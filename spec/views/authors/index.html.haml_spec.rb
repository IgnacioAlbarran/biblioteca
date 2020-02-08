require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :city => "City",
        :address => "Address",
        :website => "Website"
      ),
      Author.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :city => "City",
        :address => "Address",
        :website => "Website"
      )
    ])
  end

  it "renders a list of authors" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
