json.array!(@users) do |user|
  json.extract! user, :name, :email, :avatar
  json.url user_url(user, format: :json)
end
