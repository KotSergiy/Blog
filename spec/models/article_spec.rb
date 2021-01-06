require "rails_helper"

RSpec.describe Article, type: :model do
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      user=create(:user)
      article=create(:article, title: 'La-la-la', user: user)
      expect(article.subject).to eq 'La-la-la'
    end
  end
end
