json.extract! address, :id, :number, :street, :post_code, :created_at, :updated_at
json.url address_url(address, format: :json)
