json.extract! usuario, :id, :nombre, :apellido, :correo, :celular, :ciudad, :genero, :username, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
