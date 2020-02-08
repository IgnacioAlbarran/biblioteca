require 'rails_helper'

RSpec.describe "authors/show", type: :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :phone => "Phone",
      :city => "City",
      :address => "Address",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Website/)
  end
end
