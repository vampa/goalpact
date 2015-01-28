class OrganizationsController < ApplicationController
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    before_action :authenticate_user!, :except => [:public]
    
    # Only goal page that won't use the dash layout is the public view
    layout 'organization'

    def public
        @charity = Charity.where(:subdomain => params[:subdomain]).first
        if @charity == nil
            redirect_to :root
        end
    end

end