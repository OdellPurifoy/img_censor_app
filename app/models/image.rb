class Image < ApplicationRecord
  validates :name, :img_pixel_width, :img_pixel_height, :img_type, presence: true
  belongs_to :consult
end
