require "rails_helper"

feature "Article Creation" do
  before(:all) do
    sign_up
  end

  after(:all) do
    # before/after(:all) is not transactional; see https://www.relishapp.com/rspec/rspec-rails/docs/transactions
    DatabaseCleaner.clean_with(:truncation)
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content 'Новая статья'
  end
end
