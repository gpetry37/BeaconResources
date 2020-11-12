=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: suggestion_controller.rb
Description: Handles suggestion queries
Last modified on: 11/11/2020
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
        end
    end

    # Contoller for adding suggestions
    def suggestions
        # Checks for parameters to see if suggestion has been submitted
        unless params[:name] == nil
            @suggestion = Suggestion.create(:name=> params[:name], :s_type => params[:type], :city => params[:city], :county => params[:county], :description => params[:desc])
            if @suggestion.save
                redirect_to root_path, notice: 'Suggestion created!'
            else
                redirect_to root_path, alert: 'Could not save suggestion.'
            end
        end
    end

    # Checks for admin
    def authorize_admin
        return unless !current_admin
        redirect_to root_path, alert: 'Admins only!'
    end
end
