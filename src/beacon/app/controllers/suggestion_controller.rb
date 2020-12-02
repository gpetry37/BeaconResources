=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: suggestion_controller.rb
Description: Handles suggestion queries
Last modified on: 12/2/2020
=end

class SuggestionController < ApplicationController
    # Makes sure that the user is an admin before accessing view controller
    before_action :authorize_admin, :only => :view

    # Controller for viewing all suggestions
    def view
        # Displays all suggestions
        @suggestions = Suggestion.all
        # Checks to see if suggestion should be removed
        if params[:id] != nil
            Suggestion.destroy(params[:id])
            flash.notice = 'Suggestion removed!'
            redirect_to view_path
        end
    end

    def suggestions
    end

    # Contoller for adding suggestions
    def submit
        # Checks for parameters to see if suggestion has been submitted
        @suggestion = Suggestion.create(:name=> params[:name], :s_type => params[:type], :city => params[:city], :county => params[:county], :description => params[:desc])
        if @suggestion.save
            flash.notice = 'Suggestion created!'
        else
            flash.alert = 'Could not save suggestion.'
        end
        # Refreshes the page as this was a huge problem, code used from: https://stackoverflow.com/questions/7465259/how-can-i-reload-the-current-page-in-ruby-on-rails
        respond_to do |format|
            format.js {render inline: "location.reload();" }
        end
    end

    # Checks for admin
    def authorize_admin
        return unless !current_admin
        redirect_to root_path, alert: 'Admins only!'
    end
end
