json.array!(@person_entities) do |person_entity|
  json.extract! person_entity, :name, :trade_name, :cnpj
  json.url person_entity_url(person_entity, format: :json)
end
