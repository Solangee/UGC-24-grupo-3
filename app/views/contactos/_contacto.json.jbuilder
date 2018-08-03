json.extract! contacto, :id, :nombre, :email, :asunto, :mensaje, :created_at, :updated_at
json.url contacto_url(contacto, format: :json)
