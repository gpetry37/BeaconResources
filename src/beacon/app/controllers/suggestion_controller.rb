=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: suggestion_controller.rb
Description: Handles suggestion queries
Last modified on: 11/09/2020
=end

class SuggestionController < ApplicationController
    def view
        @suggestions = Suggestion.all
    end

    def suggestions
    end

    def submit
        Suggestion.create(:name=> params[:name], :s_type => params[:type], :location => params[:location], :description => params[:desc])
        redirect_to :action => "suggestions", notice: "Suggestion created!"
    end
end
