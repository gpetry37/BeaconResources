class UpdateController < ApplicationController
    before_action :authorize_admin, :only => [:remove, :add]

    def add
    end

    def remove
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

    def authorize_admin
        return unless !current_admin
        redirect_to root_path, alert: 'Admins only!'
    end
end