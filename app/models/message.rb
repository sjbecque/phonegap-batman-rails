class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  has_many :responses, class_name: 'Message'

  default_scope { order('created_at DESC') }
  scope :parent_messages, lambda { where(message_id: nil) }
end
