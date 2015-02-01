json.array!(@candidates) do |candidate|
  json.extract! candidate, :id, :name, :surname, :email, :phone, :role, :city, :technology, :company_id
  json.url candidate_url(candidate, format: :json)
end
