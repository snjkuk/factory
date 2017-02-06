json.extract! product, :id, :pro_name, :pro_title, :pro_type, :created_at, :updated_at
json.url product_url(product, format: :json)