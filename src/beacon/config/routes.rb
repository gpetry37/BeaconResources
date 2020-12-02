=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: routes.rb
Description: Directs application to the appropriate page
Last modified on: 12/2/2020
=end

Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # root
  root to: "dashboard#index"
  post '', to: 'dashboard#index', as: 'filter'
  
  # suggestions
  get 'suggestions', to: 'suggestion#suggestions', as: 'suggestions'
  post 'submit', to: 'suggestion#submit', as: 'submit'

  # Viewing Suggestions
  get 'view', to: 'suggestion#view', as: 'view'
  delete 'view', to: 'suggestion#view', as: 'remove_s'
  
  # Removing resources
  get 'remove', to: 'update#remove', as: 'remove'
  delete 'remove', to: 'update#remove', as: 'remove_submit'

  # Adding resources
  get 'add', to: 'update#add', as: 'add'
  post 'add_submit', to: 'update#add_submit', as: 'add_submit'
end
