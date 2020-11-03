# frozen_string_literal: true

class Api::V1::SampleController < Api::V1::BaseController
  def index
    render json: { success: true, email: current_user.email }, status: :ok
  end
end
