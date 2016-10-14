json.extract! atleta, :id, :nome, :photo, :descricao, :modalidade_id, :created_at, :updated_at
json.url atleta_url(atleta, format: :json)