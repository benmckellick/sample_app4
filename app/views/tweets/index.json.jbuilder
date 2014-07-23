json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :has_many, :, :belongs_to, :
  json.url tweest_url(tweet, format: :json)
end
