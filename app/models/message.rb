class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  has_many :reponses, class_name: 'Message'

  default_scope { order('created_at DESC') }
end
