Rails.application.routes.draw do
  devise_for :users

  # Public Routes

  root 'application#home'
  get "org/:subdomain" => "application#charity", :as => :charity
  get "goal/:goal_id" => "application#goal", :as => :goal

  # User Routes

  get "dashboard" => "application#dashboard", :as => :dashboard

  get "new" => "goals#new", :as => :new_goal
  post "create" => "goals#create", :as => :create_goal
end
