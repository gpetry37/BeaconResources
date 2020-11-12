=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: update_controller.rb
Description: Allows admin to update the resources db
Last modified on: 11/11/2020
=end

class UpdateController < ApplicationController
    # Makes sure that the user is an admin before accessing remove or add controller
    before_action :authorize_admin, :only => [:remove, :add]

    # Function for adding resources
    def add
        # Checks for parameters to see if Resource has been submitted
        unless params[:name] == nil
            @resource = Resource.create(:name=> params[:name], :address => params[:address], :town => params[:city], :zip_code => params[:zip], :county_id => params[:post][:county_id], :phone => params[:phone], :category_id => params[:post][:category_id])
            if @resource.save
                redirect_to root_path, notice: 'Resource added!'
            else
                redirect_to root_path, alert: 'Could not save resource.'
            end
        end
    end

    # Function for removing resources
    def remove
        # Checks for id param to delete a resource
        if params[:id] != nil
            Resource.destroy(params[:id])
        end
    
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

    # Checks for admin
    def authorize_admin
        return unless !current_admin
        redirect_to root_path, alert: 'Admins only!'
    end
end