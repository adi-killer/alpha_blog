require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures not empty username' do 
      user = User.new(username: '',email: "adityaagarwal@gmail.com", password: "password").save
      expect(user).to eq(false)
    end

    it 'ensures uniqueness of email' do 
      user1 = User.new(username: 'adi1',email: "adityaagarwal@gmail.com").save
      user2 = User.new(username: 'adi2',email: "adityaagarwal@gmail.com").save
      expect(user2).to eq(false)
    end
  end
end
