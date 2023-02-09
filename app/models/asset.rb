class Asset < ApplicationRecord

  validates :asset_url, presence: true
  validates :base_price, presence: true
  validates :title, presence: true
end
