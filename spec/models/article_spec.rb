require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validation tests' do
    it 'ensures not empty title' do 
      article = Article.new(title: '',description: "I am a testing article").save
      expect(article).to eq(false)
    end

    it 'ensures not empty title' do 
      article = Article.new(title: 'Article-Title',description: "").save
      expect(article).to eq(false)
    end
  end
end
