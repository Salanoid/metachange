json.extract! unwanted, :id, :title, :description, :created_at, :updated_at
json.url unwanted_url(unwanted, format: :json)