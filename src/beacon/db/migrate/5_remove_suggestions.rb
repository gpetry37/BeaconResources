=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: 5_remove_suggestions.rb
Description: Creates Remove Suggestions db table
Last modified on: 11/09/2020
=end

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
