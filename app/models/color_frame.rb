# frozen_string_literal: true

# ColorFrame model
class ColorFrame < ApplicationRecord
  belongs_to :color
  belongs_to :spotlight

  #  validates :color, presence: true
  #  validates :spotlight, presence: true
end
