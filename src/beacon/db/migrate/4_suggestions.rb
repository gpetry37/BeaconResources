=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: 4_add_suggestions.rb
Description: Creates Add Suggestions db table
Last modified on: 11/09/2020
=end

class Suggestions < ActiveRecord::Migration[6.0]
  def self.up
    create_table :suggestions do |t|
      t.column :name, :string
      t.column :s_type, :string
      t.column :location, :string
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end
  
  def self.down
    drop_table :suggestions
  end
end
