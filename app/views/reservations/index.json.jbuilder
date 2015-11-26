json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :couch_id, :user_id, :fech_ing, :fech_egr
  json.url reservation_url(reservation, format: :json)
end
