=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: resource.rb
Description: Resource model
Last modified on: 09/28/2020
=end

class Resource < ApplicationRecord
  has_many :addsuggestions
  has_many :removesuggestions
  belongs_to :county
  has_one :category
end
