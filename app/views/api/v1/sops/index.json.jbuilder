json.array!(@sops) do |sop|
  json.extract! sop, :id, :title, :content
  json.url api_v1_sop_url(sop)
end
