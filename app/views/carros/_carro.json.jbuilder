json.extract! carro, :id, :modelo, :matricula, :color, :created_at, :updated_at
json.url carro_url(carro, format: :json)
