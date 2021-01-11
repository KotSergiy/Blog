require "rails_helper"

feature "Comment Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user create comment" do
    visit new_article_path
    rec_article
    visit article_path(1)
    fill_in 'comment_body', with: 'Comment text'
    click_button 'Отправить'

    expect(page).to have_content 'Comment text'
  end

  after(:each) do
    # before/after(:all) is not transactional; see https://www.relishapp.com/rspec/rspec-rails/docs/transactions
    DatabaseCleaner.clean_with(:truncation)
  end
end
