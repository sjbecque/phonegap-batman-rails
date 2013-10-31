class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_many :responses
  has_one :user
end
