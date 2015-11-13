require 'rails_helper'

feature 'users' do


  context 'no users have been added' do
    scenario 'should display prompt to add a user' do
      visit users_path
      expect(page).to have_content 'No users yet'
      expect(page).to have_link 'Add a user'
    end
  end

  context 'users have been added' do
    before do
      FactoryGirl.create(:user, name: 'Linda')
    end

    scenario 'display users' do
      visit users_path
      expect(page).to have_content ('Linda')
      expect(page).not_to have_content ('no users yet')
    end
  end
end
