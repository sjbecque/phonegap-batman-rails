class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :link
  has_many :responses
  has_one :user

  def link
    message_url(self.id)
  end
end
