json.array!(@people) do |person|
  json.extract! person, :status, :person, :person, :person, :person, :person, :person, :person, :person, :person, :address_id, :contact_id
  json.url person_url(person, format: :json)
end
