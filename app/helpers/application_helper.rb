# frozen_string_literal: true

# application helper class
module ApplicationHelper
  def foregound_color_for_luma(luma)
    (luma / 255.0) > 0.5 ? '000000' : 'ffffff'
  end

  def visible_shows
    Show.all.order(:name).collect { |show| [show.name, show.id] }
  end

  def current_show
    Show.find(session[:current_show_id]).nil? ? Show.new : Show.find(session[:current_show_id])
  end
end
