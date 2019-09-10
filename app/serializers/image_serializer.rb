class ImageSerializer < ActiveModel::Serializer
  attributes :id, :name, :has_censors, :img_pixel_height, :img_pixel_width, :img_type, :consult_id
  belongs_to :consult
end
