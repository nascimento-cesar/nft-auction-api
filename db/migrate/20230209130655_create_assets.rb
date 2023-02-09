class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets, id: :uuid do |t|
      t.string :title, null: false
      t.string :asset_url, null: false
      t.jsonb :asset_metadata, default: {}
      t.jsonb :auction_metadata, default: {}
      t.decimal :base_price, null: false, default: 0.0

      t.timestamps
    end
  end
end
