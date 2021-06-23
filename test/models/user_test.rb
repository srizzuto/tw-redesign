require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context 'Associations' do
    should have_many(:opinions).class_name('Opinion')
    should have_many(:followings).class_name('Following')
    should have_many(:inverse_followings).class_name('Following')
    should have_one_attached(:photo)
    should have_one_attached(:cover_image)
  end

  context 'Validations' do
    should allow_value('MyString').for(:fullname)

    should validate_length_of(:username)
    should validate_presence_of(:fullname)

    should validate_presence_of(:username)
    should validate_length_of(:fullname)
  end
end
