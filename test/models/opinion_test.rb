require 'test_helper'

class OpinionTest < ActiveSupport::TestCase
  context 'Associations' do
    should belong_to(:author).class_name('User')
  end

  context 'Validations' do
    should validate_presence_of(:text)
    should validate_length_of(:text)
  end
end
