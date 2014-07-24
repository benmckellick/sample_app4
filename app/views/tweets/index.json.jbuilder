json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :content, :bird_id
  json.url tweet_url(tweet, format: :json)
end
