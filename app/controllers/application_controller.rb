# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # Callbacks
  skip_before_action :verify_authenticity_token
end
