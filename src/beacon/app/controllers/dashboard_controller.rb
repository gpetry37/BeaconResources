class DashboardController < ApplicationController
  def index
    @resources = Resource.all
    @categories = Category.all
    @counties = County.all
  end
end
