=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: 3_resources.rb
Description: Creates Resources db table
Last modified on: 11/09/2020
=end

class Resources < ActiveRecord::Migration[6.0]
  def self.up
    create_table :resources do |t|
      t.column :name, :string, :null => false
      t.column :address, :string
      t.column :town, :string
      t.column :state, :string
      t.column :zip_code, :string
      t.column :county_id, :integer
      t.column :phone, :bigint
      t.column :category_id, :integer
    end
  end
  
  def self.down
    drop_table :resources
  end
end
