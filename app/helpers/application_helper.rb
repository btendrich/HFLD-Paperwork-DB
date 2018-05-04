# frozen_string_literal: true

# application helper class
module ApplicationHelper
  def foregound_color_for_luma(luma)
    (luma / 255.0) > 0.5 ? '000000' : 'ffffff'
  end

  def visible_shows
    [['- Please Select -', -1]] + Show.all.order(:name).collect { |show| [show.name, show.id] }
  end

  def current_show
    show = Show.where(id: session[:current_show_id])

    if show.empty?
      nil
    else
      show.first
    end
  end
end
