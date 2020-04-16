require 'rails_helper'

describe 'Author crud' do
  context 'with an existing author' do
    before { FactoryBot.create(:author, last_name: 'Baroja') }

    it 'the author should be listed in authors#index' do
      visit authors_path
      expect(page).to have_content('Baroja')
    end
  end
end