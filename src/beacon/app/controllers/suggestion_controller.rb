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
        unless params[:name] == nil
            @suggestion = Suggestion.create(:name=> params[:name], :s_type => params[:type], :city => params[:city], :county => params[:county], :description => params[:desc])
            if @suggestion.save
                flash.now[:notice] = "Suggestion created!"
                render :suggestions
            else
                flash.now[:error] = "Could not save suggestion."
                render :suggestions
            end
        end
    end

    def submit
        
    end
end
