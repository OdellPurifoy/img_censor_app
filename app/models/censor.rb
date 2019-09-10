class Censor < ApplicationRecord
  validates :censor_pixel_height, :censor_pixel_width, :x_axis_location, :y_axis_location, presence: true
  belongs_to :image
end
