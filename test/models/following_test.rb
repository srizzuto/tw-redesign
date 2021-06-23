require 'test_helper'

class FollowingTest < ActiveSupport::TestCase
  context 'Associations' do
    should belong_to(:follower).class_name('User')
    should belong_to(:followed).class_name('User')
  end
end
