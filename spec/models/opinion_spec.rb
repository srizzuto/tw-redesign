require 'rails_helper'

RSpec.describe Opinion, type: :model do
  it { should belong_to(:author).class_name('User') }
  it { should validate_presence_of(:text) }
  it { should validate_length_of(:text) }
end
