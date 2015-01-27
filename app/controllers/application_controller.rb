class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    # Redirect to landing page if not logged in
    before_action :authenticate_user!, :only => [:dashboard]
    layout 'dash', :only => [:dashboard]

    # Redirect to user dashboard if logged in
    before_action :direct_to_dash!, :only => [:home]

    def home
    end

    def dashboard
    end

    def charity
        @charity = Charity.where(:subdomain => params[:subdomain]).first
        if @charity == nil
            redirect_to :root
        end
    end

    def goal
        @goal = Goal.where(:id => params[:goal_id]).first
        if @goal == nil
            redirect_to :root
        end
    end

    private

    def direct_to_dash!
        if current_user
            redirect_to :dashboard
        end
    end

end