class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.integer :channel_id
      t.integer :show_id
      t.date :date
      
    end
  end
end
