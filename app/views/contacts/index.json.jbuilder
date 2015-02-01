json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :surname, :email, :phone, :role, :company_id
  json.url contact_url(contact, format: :json)
end
