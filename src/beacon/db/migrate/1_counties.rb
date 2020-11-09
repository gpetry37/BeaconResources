=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: 1_counties.rb
Description: Creates Counties db table
Last modified on: 11/09/2020
=end

class Counties < ActiveRecord::Migration[6.0]
  def self.up
    create_table :counties do |t|
      t.column :name, :string, :limit => 12, :null => false
    end
  end

  def self.down
    drop_table :counties
  end
end
