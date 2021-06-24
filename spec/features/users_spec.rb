require 'rails_helper'

describe 'Saving process', type: :feature do
  it 'should not save user without username' do
    user = User.new(fullname: 'Juan Pepe')
    expect(user.save).to be(false)
  end

  it 'should not save user if fullname is empty' do
    user = User.new(username: 'Juan')
    expect(user.save).to be(false)
  end

  it 'should not save user username less than 3 characters' do
    user = User.new(username: 'Ju', fullname: 'Juan Pepe')
    expect(user.save).to be(false)
  end

  it 'should save user with all fields' do
    user = User.new(username: 'Juan', fullname: 'Juan Pepe')
    user.save
    expect(user.username).to eq('Juan')
  end
end
