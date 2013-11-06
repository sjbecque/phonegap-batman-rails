class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  has_many :responses, class_name: 'Message'

  scope :parent_messages, lambda { where(message_id: nil).order('created_at DESC') }
end
