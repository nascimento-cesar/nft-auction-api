class CreateBids < ActiveRecord::Migration[7.0]
  def change
    create_table :bids, id: :uuid do |t|
      t.belongs_to :asset
      t.belongs_to :customer

      t.decimal :value, null: false, default: 0.0

      t.timestamps
    end

    add_index :bids, [:asset_id, :value]
  end
end
