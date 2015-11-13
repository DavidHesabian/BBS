require 'rails_helper'

feature 'users' do 

  before do 
    User.create(name: 'Linda')
  end

  context 'no users have been added' do
  		scenario 'should display prompt to add a user' do
  			visit '/users'
  			expect(page).to have_content 'No users yet'
  			expect(page).to have_link 'Add a user'
  	    end
    end

    context 'users have been added' do
    	scenario 'display users' do
    		visit '/users'
    		expect(page).to have_content ('Linda')
  			expect(page).not_to have_content ('no users yet')
  		end
  	end
end
