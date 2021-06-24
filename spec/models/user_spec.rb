require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:opinions).class_name('Opinion') }
  it { should have_many(:followings).class_name('Following') }
  it { should have_many(:inverse_followings).class_name('Following') }
  it { should have_one_attached(:photo) }
  it { should have_one_attached(:cover_image) }
  it { should allow_value('MyString').for(:fullname) }
  it { should validate_length_of(:username) }
  it { should validate_presence_of(:fullname) }
  it { should validate_presence_of(:username) }
  it { should validate_length_of(:fullname) }
end
