json.array!(@users) do |user|
  json.extract! user, :id, :has_many, :, :belongs_to, :
  json.url user_url(user, format: :json)
end
