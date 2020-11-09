=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: routes.rb
Description: Directs application to the appropriate page
Last modified on: 11/09/2020
=end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
  get 'login', to: 'login#login', as: 'login'
  post '', to: 'dashboard#index', as: 'filter'
  get 'suggestions', to: 'suggestion#suggestions', as: 'suggestions'
end
