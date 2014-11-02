Rails.application.routes.draw do

  devise_for :users

  get "new" => "goals#new", :as => :new_goal
  post "create" => "goals#create", :as => :create_goal
  
  root 'application#home'

  get "dashboard" => "application#dashboard", :as => :dashboard

end
