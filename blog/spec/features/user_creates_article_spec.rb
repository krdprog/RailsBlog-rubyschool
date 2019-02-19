require "rails_helper"
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Article Creation" do

  before(:all) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'New article'
    # expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end