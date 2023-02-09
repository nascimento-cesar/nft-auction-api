require 'rails_helper'

describe Asset, type: :model do
  context 'relationships' do
    it { should belong_to(:asset) }
    it { should belong_to(:customer) }
  end

  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:asset_url) }
    it { should validate_presence_of(:base_price) }
  end
end
