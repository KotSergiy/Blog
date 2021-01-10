require "rails_helper"

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('article.article_new')
  end

  scenario "allows user to create article" do
    visit new_article_path
    rec_article
    expect(page).to have_content I18n.t('article.author')
  end

  after(:each) do
    # before/after(:all) is not transactional; see https://www.relishapp.com/rspec/rspec-rails/docs/transactions
    DatabaseCleaner.clean_with(:truncation)
  end
end
