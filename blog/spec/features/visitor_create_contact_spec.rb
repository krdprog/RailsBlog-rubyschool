require "rails_helper"

feature "Contact creation" do
	scenario "allows acess to contacts page" do
		visit '/contacts'

		expect(page).to have_content I18n.t('contacts.contact_us')
	end

  scenario "allows a guest to create contact" do
    visit '/contacts'
    fill_in :contact_email, with: 'foo@bar.ru'
    fill_in :contact_message, with: 'Foo Bar Baz'

    click_button 'Send message'
    expect(page).to have_content 'Thanks!'
  end

end