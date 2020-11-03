# frozen_string_literal: true

# noinspection RubyClassModuleNamingConvention
# Base class for API controllers
class Api::V1::BaseController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include Pundit
end
