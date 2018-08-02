json.extract! oferta_educativa, :id, :nombre, :descripcion, :categoria_ids, :jornada_id, :ubicacion_id, :duracion_id, :created_at, :updated_at
json.url oferta_educativa_url(oferta_educativa, format: :json)
