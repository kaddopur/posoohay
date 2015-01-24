json.array!(@sops) do |sop|
  json.extract! sop, :id, :title, :content
  json.url sop_url(sop, format: :json)
end
