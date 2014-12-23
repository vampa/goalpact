class GoalsController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :authenticate_user!, :except => [:public]
    
    # Only goal page that won't use the dash layout is the public view
    layout 'blank', :except => [:public]

    def new #loads the form for creating a goal
	end

	def create # create the initial row in the db
        binding.pry
        @goal = Goal.new(
            :type => params[:type], 
            :user_id => current_user.id, 
            :charity_id => params[:charity],
            :step => 2
            )
        if @goal.save!
            redirect_to step
        end
	end

    def step # picks up on what step the goal is on for its setup
    end

    def update_step # submit setup step
    end

    def edit # as an admin, edit mode of a goal to change data
    end

    def update # submit admin edit
    end

    def public # public, shareable profile view
    end

end