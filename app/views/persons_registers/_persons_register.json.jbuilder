json.extract! persons_register, :id, :name, :cpf, :rg, :created_at, :updated_at
json.url persons_register_url(persons_register, format: :json)
