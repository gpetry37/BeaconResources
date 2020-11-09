=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: 2_categories.rb
Description: Creates Categories db table
Last modified on: 11/09/2020
=end

class Categories < ActiveRecord::Migration[6.0]
  def self.up
    create_table :categories do |t|
      t.column :name, :string, :null => false
    end
  end

  def self.down
    drop_table :categories
  end
end
