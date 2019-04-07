json.extract! user, :id, :username, :email, :groups, :firstname, :lastname, :address, :postalcode, :created_at, :updated_at
json.url user_url(user, format: :json)
