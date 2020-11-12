=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: county.rb
Description: County model
Last modified on: 09/28/2020
=end

class County < ApplicationRecord
  has_many :resources
end
