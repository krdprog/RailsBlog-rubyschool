require "rails_helper"

feature "Sign Up creation" do
  scenario "allows acess to sugn up page" do
    visit new_user_registration_path

    expect(page).to have_content "Sign up"
  end

  # scenario "allows a guest to create contact" do
  #   visit '/contacts'
  #   fill_in :contact_email, with: 'foo@bar.ru'
  #   fill_in :contact_message, with: 'Foo Bar Baz'

  #   click_button 'Send message'
  #   expect(page).to have_content 'Thanks!'
  # end

end