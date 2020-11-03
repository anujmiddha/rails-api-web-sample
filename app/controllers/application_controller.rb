# frozen_string_literal: true

## Base application controller class
class ApplicationController < ActionController::Base
    protect_from_forgery
    include Pundit

    protected

    def authenticate_user!
        redirect_to root_path, notice: 'Please sign in' unless user_signed_in?
    end
end
