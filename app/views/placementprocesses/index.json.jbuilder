json.array!(@placementprocesses) do |placementprocess|
  json.extract! placementprocess, :id
  json.url placementprocess_url(placementprocess, format: :json)
end
