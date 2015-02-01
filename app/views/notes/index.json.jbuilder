json.array!(@notes) do |note|
  json.extract! note, :id, :user_id, :company_id
  json.url note_url(note, format: :json)
end
