class CensorSerializer < ActiveModel::Serializer
  attributes :id, :censor_pixel_height, :censor_pixel_width, :x_axis_location, :y_axis_location
  belongs_to :image
end
