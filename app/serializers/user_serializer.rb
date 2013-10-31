class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :avatar, :link

  def link
    user_url(self.id)
  end
end
