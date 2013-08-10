json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :email, :confirmation_token, :confirmed_at, :confirmation_sent_at
  json.url subscription_url(subscription, format: :json)
end
