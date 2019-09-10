class ConsultSerializer < ActiveModel::Serializer
  attributes :id, :questions, :specialty, :redact, :user_id
  belongs_to :user
end
