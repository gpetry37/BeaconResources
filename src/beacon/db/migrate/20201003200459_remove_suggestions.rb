class RemoveSuggestions < ActiveRecord::Migration[6.0]
  def self.up
    create_table :removesuggestions do |t|
      t.column :resouce_id, :integer
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end
  
  def self.down
    drop_table :removesuggestions
  end
end
