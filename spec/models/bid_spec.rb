require 'rails_helper'

describe Bid, type: :model do
  context 'relationships' do
    it { should belong_to(:asset) }
    it { should belong_to(:customer) }
  end

  context 'validations' do
    it { should validate_presence_of(:value) }
    it { should validate_numericality_of(:value).is_greater_than(0.0) }
  end
end
