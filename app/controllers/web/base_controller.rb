# frozen_string_literal: true

## Base class for all web controllers
class Admin::BaseController < ApplicationController
    before_action :authenticate_user!
end
