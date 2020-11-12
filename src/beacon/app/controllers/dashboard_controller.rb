=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: dashboard_controller.rb
Description: Handles displaying database information on dashboard page
Last modified on: 11/09/2020
=end

class DashboardController < ApplicationController
  # Controller for home page
  def index
    # Checks that a filter has not been submitted and otherwise gets all resources.
    if params[:post].present? and params[:post][:category_id] != ''
      @resources = Resource.where("category_id = :post", {post: params[:post][:category_id]})
    else
      @resources = Resource.all
    end

    # Shows counties only when they have resources under them as to not clutter the screen
    county_arr = []
    @resources.each do |r|
      unless county_arr.include? r.county_id
        county_arr.push(r.county_id)
      end
    end
    @counties = County.find(county_arr)

    # Grabs all categories for drop down
    @categories = Category.all
  end
end
