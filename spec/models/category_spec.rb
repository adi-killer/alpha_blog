require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'ensures not empty name' do 
    category = Category.new(name: '').save
    expect(category).to eq(false)
  end

  it 'ensures uniqueness of email' do 
    category = Category.new(name: 'Sport').save
    category2 = Category.new(name: 'Sport').save
    expect(category2).to eq(false)
  end

  it 'ensures minimum length of title' do 
    category = Category.new(name: 'AD').save
    expect(category).to eq(false)
  end
end
