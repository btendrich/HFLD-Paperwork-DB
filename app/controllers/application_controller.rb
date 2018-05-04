# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_default_show_id

  def set_default_show_id
    session[:current_show_id] = -1 unless session[:current_show_id]
  end
end
