class Consult < ApplicationRecord
  validates :specialty, :questions, presence: true
  belongs_to :user
  has_many :images
end
