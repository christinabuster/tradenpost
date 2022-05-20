json.extract! trade, :id, :product, :description, :category, :expiration, :neighborhood, :user_id, :interested_in, :accept, :image_file_name, :image_content_type, :image_updated_at, :created_at, :updated_at
json.url trade_url(trade, format: :json)
