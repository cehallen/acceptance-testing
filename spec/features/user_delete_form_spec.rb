require 'spec_helper'



feature 'user deletes a form' do
#   As an admin
# I want to delete an inquiry
# So that I can remove spam or other undesirable inquiries

# * I can remove an item from the listing of contact inquiries

  it 'removes a form from a listing' do


    example = Contact.create(subject: 'Stuff', first_name: 'Steve', last_name: 'Smith',
                             email: 'steve@gmail.com', description: 'awesome stuff')
    visit '/contacts'

    click_on 'Destroy'
    expect(page).not_to have_content(example.subject)


  end
end
