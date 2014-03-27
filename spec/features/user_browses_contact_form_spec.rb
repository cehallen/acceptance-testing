require 'spec_helper'

feature 'User browses the contact form' do
  #   As an admin
  # I want to review contact inquiries
  # So that I can respond or take action


  #    I can see a list of all contact inquiries

  context 'browsing contact forms' do

    it 'displays index with all submitted forms' do


      example = Contact.create(subject: 'Stuff', first_name: 'Steve', last_name: 'Smith',
                             email: 'steve@gmail.com', description: 'awesome stuff')
      visit '/contacts'


      expect(page).to have_content example.subject
    end

  end

end

