json.array!(@person_individuals) do |person_individual|
  json.extract! person_individual, :name, :surname, :gender, :cpf, :birthdate
  json.url person_individual_url(person_individual, format: :json)
end
