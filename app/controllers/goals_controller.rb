class GoalsController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    
    # Only goal page that won't use the dash layout is the public view
    layout 'dash', :except => [:public]

    def new
	end

	def create
	end

    def public
    end

end