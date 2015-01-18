json.array!(@myas) do |mya|
  json.extract! mya, :id, :title
  json.url mya_url(mya, format: :json)
end
