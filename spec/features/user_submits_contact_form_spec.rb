require 'spec_helper'

feature 'User fill in the contact form' do

  # As a site visitor
  # I want to contact the site's staff
  # So that I can tell them how awesome they are


  # I must specify a valid email address
  # I must specify a subject
  # I must specify a description
  # I must specify a first name
  # I must specify a last name
  context 'submitting contact forms' do
    it 'creates a valid form' do



      fill_in 'Email', with: 'steve@yahoo.com'
      fill_in 'Subject', with: "you're awesome"
      fill_in 'Description',  with: "can't live without you guys"
      fill_in 'First name', with: "Chris"
      fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "Contact was successfully created."
    end
  end

  context 'with invalid attributes' do
    it 'see errors within first name invalid attributes' do
      visit '/contacts/new'


      fill_in 'Email', with: 'steve@yahoo.com'
      fill_in 'Subject', with: "you're awesome"
      fill_in 'Description',  with: "can't live without you guys"
      # fill_in 'First name', with: "Chris"
      fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "First name can't be blank"
    end


    it 'see errors within blank email  attributes' do
      visit '/contacts/new'


      fill_in 'Subject', with: "you're awesome"
      fill_in 'Description',  with: "can't live without you guys"
      fill_in 'First name', with: "Chris"
      fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "Email can't be blank"
    end
      it 'see errors within email invalid attributes' do
      visit '/contacts/new'

      fill_in 'Email', with: 'steve'
      fill_in 'Subject', with: "you're awesome"
      fill_in 'Description',  with: "can't live without you guys"
      fill_in 'First name', with: "Chris"
      fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "Email is invalid"
    end

     it 'see errors within description attributes' do
      visit '/contacts/new'

      fill_in 'Email', with: 'steve@yahoo.com'
      fill_in 'Subject', with: "you're awesome"
      # fill_in 'Description',  with: "can't live without you guys"
      fill_in 'First name', with: "Chris"
      fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "Description can't be blank"
    end


     it 'see errors within subject attributes' do
      visit '/contacts/new'

      fill_in 'Email', with: 'steve@yahoo.com'
      # fill_in 'Subject', with: "you're awesome"
      fill_in 'Description',  with: "can't live without you guys"
      fill_in 'First name', with: "Chris"
      fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "Subject can't be blank"
    end


     it 'see errors within last name attributes' do
      visit '/contacts/new'

      fill_in 'Email', with: 'steve@yahoo.com'
      fill_in 'Subject', with: "you're awesome"
      fill_in 'Description',  with: "can't live without you guys"
      fill_in 'First name', with: "Chris"
      # fill_in 'Last name', with: "Allen"
      click_on 'Create Contact'
      expect(page).to have_content "Last name can't be blank"
    end



  end

end
