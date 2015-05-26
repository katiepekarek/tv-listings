class CreateShowListings < ActiveRecord::Migration
  def change
    create_table :show_listings do |t|
      t.integer :channel_id
      t.integer :show_id
      t.date :date
      t.timestamps null: false
    end
  end
end
