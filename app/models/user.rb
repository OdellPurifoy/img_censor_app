class User < ApplicationRecord
  validates :first_name, :last_name, :username, :email, :password, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, :username, uniqueness: true

  has_many :consults
end
