json.array!(@valoration_users) do |valoration_user|
  json.extract! valoration_user, :id, :valor, :user_id, :reservation_id
  json.url valoration_user_url(valoration_user, format: :json)
end
