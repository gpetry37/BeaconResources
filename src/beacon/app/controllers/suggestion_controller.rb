=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: suggestion_controller.rb
Description: Handles suggestion queries
Last modified on: 11/09/2020
=end

class SuggestionController < ApplicationController
    before_action :authorize_admin, :only => :view

    def view
        if admin_signed_in?
            @suggestions = Suggestion.all
        else
            redirect_to root_path alert = "Could not save suggestion."
        end
    end

    def suggestions
        unless params[:name] == nil
            @suggestion = Suggestion.create(:name=> params[:name], :s_type => params[:type], :city => params[:city], :county => params[:county], :description => params[:desc])
            if @suggestion.save
                redirect_to root_path, notice: 'Suggestion created!'
            else
                redirect_to root_path, alert: 'Could not save suggestion.'
            end
        end
    end

    def submit
        
    end

    def authorize_admin
        return unless !current_admin
        redirect_to root_path, alert: 'Admins only!'
    end
end
