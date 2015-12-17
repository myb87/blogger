json.array!(@authers) do |auther|
  json.extract! auther, :id, :username, :email, :password, :password_confirmation
  json.url auther_url(auther, format: :json)
end
