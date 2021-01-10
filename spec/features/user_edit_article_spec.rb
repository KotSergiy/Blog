require "rails_helper"

feature "Article Edit" do
  before(:each) do
    sign_up
  end

  scenario "allows user edit article page" do
    visit new_article_path
    rec_article
    visit edit_article_path(1)
    expect(page).to have_content I18n.t('article.edit')
  end

  scenario "allows user save article edition" do
    visit new_article_path
    rec_article
    visit edit_article_path(1)
    rec_article
    expect(page).to have_content I18n.t('article.author')
  end

  after(:each) do
    # before/after(:all) is not transactional; see https://www.relishapp.com/rspec/rspec-rails/docs/transactions
    DatabaseCleaner.clean_with(:truncation)
  end
end
