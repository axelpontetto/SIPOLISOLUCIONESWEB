json.array!(@images) do |image|
  json.extract! image, :id, :url, :text, :user_id, :integer
  json.url image_url(image, format: :json)
end
