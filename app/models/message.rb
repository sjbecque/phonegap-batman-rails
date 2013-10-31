class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :message
  has_many :reponses, class_name: 'Message'
end
