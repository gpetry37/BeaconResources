class DashboardController < ApplicationController
  def index
    @resources = Resource.all
    @counties = County.all
  end
end
