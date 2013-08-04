json.array!(@visitors) do |visitor|
  json.extract! visitor, 
  json.url visitor_url(visitor, format: :json)
end
